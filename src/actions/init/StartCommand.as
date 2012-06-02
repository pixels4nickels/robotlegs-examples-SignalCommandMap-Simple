package actions.init
{
    import actions.base.Notification;

    import model.ScoreModel;

    public class StartCommand
    {
        [Inject(name="ScoresNotification")]
        public var scoreNotification:Notification;

        [Inject(name="StatusNotification")]
        public var statusNotification:Notification;

        [Inject]
        public var scoreModel:ScoreModel;

        public function execute():void
        {
            scoreNotification.dispatch(true, "", {highScore:scoreModel.highScore, score:scoreModel.score});
            statusNotification.dispatch(true, "Initialized", null);
        }

    }
}