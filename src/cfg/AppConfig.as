package cfg
{
	import control.TestCommand;
	import control.TestSignal;

	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;

	import views.SignalCommandTester;
	import views.api.ISignalCommandTester;

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
			mediatorMap.map( ISignalCommandTester ).toMediator( SignalCommandTester );
			commandMap.map( TestSignal ).toCommand( TestCommand );
		}
	}
}
