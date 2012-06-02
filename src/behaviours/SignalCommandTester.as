package behaviours
{

import actions.TestCommandNotification;
import actions.TestSignal;
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class SignalCommandTester extends Mediator
	{
		[Inject]
		public var view:ISignalCommandTestable;

		[Inject]
		public var testSignal:TestSignal;

        [Inject]
        public var testCommandNotification:TestCommandNotification;

		public function SignalCommandTester()
		{
		}

		override public function initialize():void
		{
            testCommandNotification.add(handleTestCommandResult);
    		view.testCommandSignal = testSignal;
		}

        public function handleTestCommandResult(success:Boolean, message:String, data:Object):void
        {
            view.testCommandResult(success, message, data);
        }
	}
}
