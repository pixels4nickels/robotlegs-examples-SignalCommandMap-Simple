package behaviours.enemy {
    import actions.enemy.EnemyDestroyedTrigger;

    public interface IEnemyDestroyable {
        function set enemyDestroyed(value:EnemyDestroyedTrigger):void;
    }
}
