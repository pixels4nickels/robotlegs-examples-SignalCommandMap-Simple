package cfg 
{
	import control.TestCommand;
	import control.TestSignal;
	
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.extensions.signalCommandMap.api.ISignalCommandMap;

	import views.AppViewMediator;
	import views.api.IAppView;
	
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
			mediatorMap.mapView(IAppView).toMediator(AppViewMediator);
			commandMap.map(TestSignal).toCommand(TestCommand);
		}
		
	}
}