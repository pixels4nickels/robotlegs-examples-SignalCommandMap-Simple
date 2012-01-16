package cfg 
{
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.core.api.IContext;
	import robotlegs.bender.core.api.IContextConfig;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.extensions.viewManager.api.IViewManager;
	import robotlegs.bender.extensions.viewMap.impl.ViewMap;
	
	import views.AppViewMediator;
	import views.api.iAppView;
	import control.TestCommand;
	import control.TestSignal;
	
	public class AppConfig implements IContextConfig
	{
		
		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:ISignalCommandMap;

		[Inject]
		public var injector:Injector;

		public function configure(context:IContext):void
		{
			mediatorMap.map(iAppView).toMediator(AppViewMediator);
			commandMap.map(TestSignal).toCommand(TestCommand);
		}
	}
}