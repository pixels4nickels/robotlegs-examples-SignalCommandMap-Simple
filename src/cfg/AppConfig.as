package cfg 
{
	import control.TestCommand;
	import control.TestSignal;
	
	import org.swiftsuspenders.Injector;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	
	import views.AppView;
	import views.AppViewMediator;
	import views.api.iAppView;
	
	public class AppConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:ISignalCommandMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function init():void
		{
			mediatorMap.mapView(AppView).toMediator(AppViewMediator).asType(iAppView);
			commandMap.map(TestSignal).toCommand(TestCommand);
		}
		
	}
}