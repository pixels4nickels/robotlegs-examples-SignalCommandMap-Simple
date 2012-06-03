package behaviours.scores
{

import model.Notification;

import robotlegs.bender.bundles.mvcs.Mediator;

	public class ScoreProvider extends Mediator
	{
		[Inject]
		public var view:IScoreDisplayable;

        [Inject(name="ScoresNotification")]
        public var scoreNotification:Notification;

		override public function initialize():void
		{
            scoreNotification.add(handleScoresNotification);
		}

        public function handleScoresNotification(message:String, data:Object):void
        {
            view.score = data.score;
            view.highScore = data.highScore;
        }
	}
}
