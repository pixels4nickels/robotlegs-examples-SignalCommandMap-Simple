package control
{
	import robotlegs.extensions.signalCommandMap.impl.SignalCommand;

	public class TestCommand extends SignalCommand
	{
		[Inject]
		public var myString:String;
		
		[Inject]
		public var myInt:int;
		
		public function execute():void
		{
			trace("TestCommand::execute()");
			trace("myString: " + myString);
			trace("myInt: " + myInt);
		}
	}
}