package control
{
	public class TestCommand
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