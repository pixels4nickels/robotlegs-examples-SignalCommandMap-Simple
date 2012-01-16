package cfg 
{
	import org.osflash.signals.Signal;
	
	import robotlegs.bender.bundles.classic.ClassicRobotlegsBundle;
	import robotlegs.bender.bundles.shared.configs.ContextViewListenerConfig;
	import robotlegs.bender.core.api.IContextBuilder;
	import robotlegs.bender.core.api.IContextBuilderBundle;
	import robotlegs.bender.extensions.commandMap.CommandMapExtension;
	import robotlegs.bender.extensions.mediatorMap.MediatorMapExtension;
	import robotlegs.bender.extensions.mediatorMap.configs.RL2MediatorsConfig;
	import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.bender.extensions.viewManager.AutoStageListenerExtension;
	import robotlegs.bender.extensions.viewManager.ViewManagerExtension;

	public class AppBundle implements IContextBuilderBundle
	{
		public function install(builder:IContextBuilder):void
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
				
		}
	}
}