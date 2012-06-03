package actions.enemy
{
    import model.Notification;

    import model.ScoreModel;
    import model.StatusModel;

    public class EnemyDestroyedCommand
    {
        [Inject]
        public var enemyType:String;

        [Inject]
        public var statusModel:StatusModel;

        [Inject]
        public var scoreModel:ScoreModel;

        public function execute():void
        {
            switch(enemyType){
                case "Drone":
                    scoreModel.score += 10;
                    break;
                case "Shuttle":
                    scoreModel.score += 25;
                    break;
                case "Warship":
                    scoreModel.score += 100;
                    break;
                case "Mothership":
                    scoreModel.score += 500;
                    break;
            }
            statusModel.status = enemyType + " Destroyed";
        }
    }
}