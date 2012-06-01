package config
{
	import robotlegs.bender.bundles.shared.configs.ContextViewListenerConfig;
	import robotlegs.bender.extensions.commandMap.CommandMapExtension;
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.eventDispatcher.EventDispatcherExtension;
	import robotlegs.bender.extensions.localEventMap.LocalEventMapExtension;
	import robotlegs.bender.extensions.logging.LoggingExtension;
	import robotlegs.bender.extensions.logging.TraceLoggingExtension;
	import robotlegs.bender.extensions.mediatorMap.MediatorMapExtension;
	import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.bender.extensions.stageSync.StageSyncExtension;
	import robotlegs.bender.extensions.viewManager.StageObserverExtension;
	import robotlegs.bender.extensions.viewManager.ViewManagerExtension;
	import robotlegs.bender.framework.api.IContext;
    import robotlegs.bender.framework.api.IExtension;

public class AppBundle implements IExtension
	{

		public function extend( context:IContext ):void
		{
			context.extend(
				LoggingExtension,
				TraceLoggingExtension,
				ContextViewExtension,
				EventDispatcherExtension,
				StageSyncExtension,
				CommandMapExtension,
				LocalEventMapExtension,
				ViewManagerExtension,
				StageObserverExtension,
				MediatorMapExtension,
				SignalCommandMapExtension );
			context.configure( ContextViewListenerConfig );
		}
	}
}
