package cfg 
{
	import control.TestCommand;
	import control.TestSignal;
	
	import org.osflash.signals.Signal;
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.bundles.classic.ClassicRobotlegsBundle;
	import robotlegs.bender.bundles.shared.configs.ContextViewListenerConfig;
	import robotlegs.bender.extensions.commandMap.CommandMapExtension;
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.eventCommandMap.EventCommandMapExtension;
	import robotlegs.bender.extensions.eventDispatcher.EventDispatcherExtension;
	import robotlegs.bender.extensions.localEventMap.LocalEventMapExtension;
	import robotlegs.bender.extensions.logging.TraceLoggingExtension;
	import robotlegs.bender.extensions.mediatorMap.MediatorMapExtension;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.modularity.ModularityExtension;
	import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.extensions.stageSync.StageSyncExtension;
	import robotlegs.bender.extensions.viewManager.ManualStageObserverExtension;
	import robotlegs.bender.extensions.viewManager.StageObserverExtension;
	import robotlegs.bender.extensions.viewManager.ViewManagerExtension;
	import robotlegs.bender.framework.context.api.IContext;
	import robotlegs.bender.framework.context.api.IContextConfig;
	import robotlegs.bender.framework.object.managed.impl.ManagedObject;
	
	import views.AppViewMediator;
	import views.api.iAppView;
		
	public class AppBundle implements IContextConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:ISignalCommandMap;
		
		[Inject]
		public var injector:Injector;

		public function configureContext(context:IContext):void
		{
			context.require(
				TraceLoggingExtension,
				ContextViewExtension,
				EventDispatcherExtension,
				ModularityExtension,
				StageSyncExtension,
				CommandMapExtension,
				EventCommandMapExtension,
				LocalEventMapExtension,
				ViewManagerExtension,
				StageObserverExtension,
				ManualStageObserverExtension,
				MediatorMapExtension,
				ContextViewListenerConfig,
				SignalCommandMapExtension, 
				AppConfig
			);
			
			//context.addStateHandler(ManagedObject.PRE_INITIALIZE, handleContextPreInitialize);
			//context.addStateHandler(ManagedObject.POST_INITIALIZE, handleContextPostInitialize);
		}
		
		private function handleContextPostInitialize():void
		{
			trace("Doing some things now that the context is initialized...");

		}
		/*public function install(builder:IContextBuilder):void
		{

			builder.withExtension(CommandMapExtension);
			
			builder
				.withExtension(ViewManagerExtension)
				.withExtension(AutoStageListenerExtension)
				.withConfig(ContextViewListenerConfig);
			
			builder
				.withExtension(MediatorMapExtension)
				.withConfig(RL2MediatorsConfig);
			
			builder
				.withExtension(SignalCommandMapExtension)
				.withConfig(AppConfig);
				
		}*/
	}
}