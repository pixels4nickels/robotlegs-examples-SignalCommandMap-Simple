package views
{
	import control.TestSignal;
	
	import robotlegs.bender.bundles.classic.impl.Mediator;
	
	import views.api.*;

	public class AppViewMediator extends Mediator
	{
		[Inject]
		public var view:IAppView;
		
		[Inject]
		public var mySignal:TestSignal;
		
		override public function initialize():void
		{
			view.myButtonSignal = mySignal;
		}
	}
}