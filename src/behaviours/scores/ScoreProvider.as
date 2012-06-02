package behaviours.scores
{

import actions.base.CommandNotification;
import actions.scores.GetScoresSignal;

import behaviours.scores.IScoreDisplayable;

import robotlegs.bender.bundles.mvcs.Mediator;

	public class ScoreProvider extends Mediator
	{
		[Inject]
		public var view:IScoreDisplayable;

		[Inject]
		public var testSignal:GetScoresSignal;

        [Inject(name="GetScoresNotification")]
        public var getScoreNotification:CommandNotification;

		public function ScoreProvider()
		{
		}

		override public function initialize():void
		{
            getScoreNotification.add(handleGetScoresResult);
            view.getScoresSignal = testSignal;
		}

        public function handleGetScoresResult(success:Boolean, message:String, data:Object):void
        {
            view.getScoresResult(success, message, data);
        }
	}
}
