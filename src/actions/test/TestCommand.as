package actions.test
{
    public class TestCommand
    {
        [Inject]
        public var testSignalParam1:String;

		[Inject]
		public var testSignalParam2:int;

        public function execute():void
        {
            trace("signal param 1: " + testSignalParam1);
			trace("signal param 2: " + testSignalParam2 as String);
        }

    }
}