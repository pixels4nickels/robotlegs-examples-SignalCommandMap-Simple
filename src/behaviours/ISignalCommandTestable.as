package behaviours
{
import actions.TestSignal;

	public interface ISignalCommandTestable
	{
		function set testCommandSignal(value:TestSignal):void;
        function testCommandResult(success:Boolean, message:String, data:Object):void;
	}
}