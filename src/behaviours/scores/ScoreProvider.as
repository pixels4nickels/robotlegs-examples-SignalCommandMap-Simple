package behaviours.scores
{

import actions.base.Notification;

import robotlegs.bender.bundles.mvcs.Mediator;

	public class ScoreProvider extends Mediator
	{
		[Inject]
		public var view:IScoreDisplayable;

        [Inject(name="ScoresNotification")]
        public var scoreNotification:Notification;

		public function ScoreProvider()
		{
		}

		override public function initialize():void
		{
            scoreNotification.add(handleScoresNotification);
		}

        public function handleScoresNotification(success:Boolean, message:String, data:Object):void
        {
            if(success){
                view.score = data.score;
                view.highScore = data.highScore;
            }
        }
	}
}
