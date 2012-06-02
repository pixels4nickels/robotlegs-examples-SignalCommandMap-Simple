package config
{
import actions.base.CommandNotification;
import actions.TestCommand;
	import actions.TestSignal;

	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;

	import behaviours.SignalCommandTester;
	import behaviours.ISignalCommandTestable;

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
            injector.map(CommandNotification).asSingleton();
			mediatorMap.map( ISignalCommandTestable ).toMediator( SignalCommandTester );
			commandMap.map( TestSignal ).toCommand( TestCommand );
		}
	}
}
