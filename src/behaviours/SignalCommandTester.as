package behaviours
{

    import actions.TestSignal;
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class SignalCommandTester extends Mediator
	{
		[Inject]
		public var view:ISignalCommandTestable;

		[Inject]
		public var mySignal:TestSignal;

		public function SignalCommandTester()
		{
		}

		override public function initialize():void
		{
			view.myTestCommandSignal = mySignal;
		}
	}
}
