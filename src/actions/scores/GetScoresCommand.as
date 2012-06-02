package actions.scores
{
import actions.base.CommandNotification;

public class GetScoresCommand
	{
        [Inject(name="GetScoresNotification")]
        public var getScoresNotification:CommandNotification;
		
		public function execute():void
		{
            // imagine maybe some async operation here to get data.
            var data:Object = {highScore:2700, lowScore:35, averageScore:300};
            complete(true, "Get Scores Complete", data);
		}

        public function complete(success:Boolean, message:String, data:Object):void
        {
            getScoresNotification.dispatch(success, message, data);
        }
	}
}