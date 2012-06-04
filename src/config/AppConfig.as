package config
{
	import actions.test.TestCommand;
	import actions.test.TestTrigger;
	
	import behaviours.test.ITriggerTestable;
	import behaviours.test.TestTriggerProvider;
	
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;

	public class AppConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:ISignalCommandMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function configure():void
		{      
            //actions
            commandMap.map( TestTrigger ).toCommand( TestCommand );
			
			// behaviours
			mediatorMap.map(ITriggerTestable).toMediator(TestTriggerProvider);
        }
	}
}
