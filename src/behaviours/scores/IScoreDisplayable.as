package behaviours.scores
{
import actions.scores.GetScoresSignal;

	public interface IScoreDisplayable
	{
		function set getScoresSignal(value:GetScoresSignal):void;
        function getScoresResult(success:Boolean, message:String, data:Object):void;
	}
}