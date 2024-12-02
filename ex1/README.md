## Отличие от mutex

Spinlock при ожидании атомика полностью останавливает выполнение кода данным хартом. То есть ни одно действие кроме освобождения атомика не запустит исполнение кода дальше, но при этом исполнение кода продолжится почти сразу после освобождение атомика. Так же все прерывания в критической секции заблокированы.

Мutex же, если не получилось захватить атомик сразу, передает управление другому потоку, и планировщик переключится на данный поток только если атомик будет свободен. То есть во время ожидания атомика могут выполнятся другие потоки, но после освобождения атомика пройдет некоторое время, перед тем как планировщик переключится на этот данный поток. Причем, планировщик переключается на поток с наибольшим временем ожидания данного мьютекса. Прерывания в критической секции остаются, поэтому могут быть смены контекста на другие потоки или обработчики прерываний.

И еще в данной реализации mutex может быть вложенный (можно делать несколько локов без анлоков -- главное, чтобы в конечном счете их количество совпало), а при попытке повторного спинлока произойдет дедлок.

## Проблемы

При активном использовании спинлока может произойти ситуация, когда два харта перезахватывают между собой спинлок, в то время, как остальные харты висят заблокированные. Так может быть, из-за того что все харты, ожидающие атомик каждый раз находятся в одинаковых условиях и каждый раз разыгрывается лотерея.

## Возможное решение проблемы

В `k_spinlock` делаем два атомика `waiters_cnt` (количество вызовов `k_spin_lock`) и `unlocked_cnt` (количество вызовов `k_spin_unlock`).
В `k_spin_lock` сразу же инкрементим `waiters_cnt` и сохраняем старое значение. Если это значение равно `unlocked_cnt`, то количество локов и анлоков совпало, следовательно спинлок свободен. Если же нет -- очердь еще не настала, надо подождать.
В `k_spin_unlock` тупо инкрементируем `unlocked_cnt`.
Остальные функции доделываем по аналогии. Единственное, `z_spin_is_locked` в такой реализации будет говорить о том, что спинлок либо занят, либо его скоро займут (думаю, это не критично).

## Отзыв

Довольно интересное задание. Дается возможность посмотреть примитивы синхронизации и разобраться, как они примерно работают. Тем более, что зифирка достаточно легковесная по коду. Думаю, поверхностно изучить устройство ядра и его примитивов будет полезно для тех, кто не сталкивался с этим. Те, кто соберет зифирку, сможет даже поиграться с демками. )
Единственное, одно неверное движение и ты уже посмотрел или ломающий спинлоки коммит, или официальную репу. Так что дополнительных балах за предложенное решение как-будто не очень много смысла.


## diff:
```c
--- a/include/zephyr/spinlock.h
+++ b/include/zephyr/spinlock.h
@@ -44,7 +44,8 @@ struct z_spinlock_key {
  */
 struct k_spinlock {
 #ifdef CONFIG_SMP
-       atomic_t locked;
+       atomic_t waiters_cnt;
+       atomic_t unlocked_cnt;
 #endif
 
 #ifdef CONFIG_SPIN_VALIDATE
@@ -170,7 +171,9 @@ static ALWAYS_INLINE k_spinlock_key_t k_spin_lock(struct k_spinlock *l)
 
        z_spinlock_validate_pre(l);
 #ifdef CONFIG_SMP
-       while (!atomic_cas(&l->locked, 0, 1)) {
+       atomic_t val_to_wait = atomic_inc(&l->waiters_cnt);
+
+       while (l->unlocked_cnt != val_to_wait) {
                arch_spin_relax();
        }
 #endif
@@ -199,10 +202,14 @@ static ALWAYS_INLINE int k_spin_trylock(struct k_spinlock *l, k_spinlock_key_t *
 
        z_spinlock_validate_pre(l);
 #ifdef CONFIG_SMP
-       if (!atomic_cas(&l->locked, 0, 1)) {
+       atomic_t val_to_wait = atomic_inc(&l->waiters_cnt);
+
+       if (l->unlocked_cnt != val_to_wait) {
+               atomic_dec(&l->waiters_cnt);
                arch_irq_unlock(key);
                return -EBUSY;
        }
+
 #endif
        z_spinlock_validate_post(l);
 
@@ -249,14 +256,7 @@ static ALWAYS_INLINE void k_spin_unlock(struct k_spinlock *l,
 #endif /* CONFIG_SPIN_VALIDATE */
 
 #ifdef CONFIG_SMP
-       /* Strictly we don't need atomic_clear() here (which is an
-        * exchange operation that returns the old value).  We are always
-        * setting a zero and (because we hold the lock) know the existing
-        * state won't change due to a race.  But some architectures need
-        * a memory barrier when used like this, and we don't have a
-        * Zephyr framework for that.
-        */
-       (void)atomic_clear(&l->locked);
+       atomic_inc(&l->unlocked_cnt);
 #endif /* CONFIG_SMP */
        arch_irq_unlock(key.key);
 }
@@ -275,7 +275,7 @@ static ALWAYS_INLINE void k_spin_unlock(struct k_spinlock *l,
  */
 static ALWAYS_INLINE bool z_spin_is_locked(struct k_spinlock *l)
 {
-       return l->locked;
+       return l->unlocked_cnt != l->waiters_cnt;
 }
 #endif
 
@@ -287,7 +287,7 @@ static ALWAYS_INLINE void k_spin_release(struct k_spinlock *l)
        __ASSERT(z_spin_unlock_valid(l), "Not my spinlock %p", l);
 #endif
 #ifdef CONFIG_SMP
-       (void)atomic_clear(&l->locked);
+       atomic_inc(&l->unlocked_cnt);
 #endif /* CONFIG_SMP */
 }

```
