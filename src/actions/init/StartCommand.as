package actions.init
{
    import model.ScoreModel;
    import model.StatusModel;

    public class StartCommand
    {
        [Inject]
        public var statusModel:StatusModel;

        [Inject]
        public var scoreModel:ScoreModel;

        public function execute():void
        {
            statusModel.status = "Start Game";
            scoreModel.modelUpdated();
        }

    }
}