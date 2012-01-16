package views
{
	import robotlegs.bender.extensions.mediatorMap.impl.Mediator;
	import views.api.*;
	import control.TestSignal;

	public class AppViewMediator extends Mediator
	{
		[Inject]
		public var view:iAppView;
		
		[Inject]
		public var mySignal:TestSignal;
		
		override public function initialize():void
		{
			view.myButtonSignal = mySignal;
		}
	}
}