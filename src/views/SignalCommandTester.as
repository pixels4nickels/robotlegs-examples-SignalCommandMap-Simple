package views
{
	import control.TestSignal;

	import robotlegs.bender.bundles.mvcs.Mediator;

	import views.api.*;

	public class SignalCommandTester extends Mediator
	{
		[Inject]
		public var view:ISignalCommandTester;

		[Inject]
		public var mySignal:TestSignal;

		public function SignalCommandTester()
		{
			trace( "can we exist?" );
		}

		override public function initialize():void
		{
			view.myButtonSignal = mySignal;
		}
	}
}
