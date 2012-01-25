package cfg 
{
	import org.swiftsuspenders.Injector;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.extensions.signalCommandMap.SignalCommandMapExtension;
	import robotlegs.extensions.signalCommandMap.api.ISignalCommandMap;
	import robotlegs.bender.framework.context.api.IContext;
	import robotlegs.bender.framework.context.api.IContextConfig;
		
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
				SignalCommandMapExtension
			);
		}
	}
}