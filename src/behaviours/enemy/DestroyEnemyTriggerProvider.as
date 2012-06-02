package behaviours.enemy
{
import behaviours.scores.*;
    import actions.enemy.EnemyDestroyedTrigger;
    import robotlegs.bender.bundles.mvcs.Mediator;

    public class DestroyEnemyTriggerProvider extends Mediator
    {
        [Inject]
        public var view:IEnemyDestroyable;

        [Inject]
        public var enemyDestroyedSignal:EnemyDestroyedTrigger;

        public function DestroyEnemyTriggerProvider()
        {
        }

        override public function initialize():void
        {
            view.enemyDestroyed = enemyDestroyedSignal;
        }
    }
}
