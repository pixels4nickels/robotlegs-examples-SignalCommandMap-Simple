package actions
{
import actions.CommandNotification;

public class TestCommand
	{
		[Inject]
		public var myString:String;
		
		[Inject]
		public var myInt:int;

        [Inject]
        public var myCallback:Function;
		
		public function execute():void
		{
            // create some test response with some fake data to return.
            // ideally the "data" property would be a Value Object of some sort.
            var result:CommandNotification = new CommandNotification();
			result.success = true;
            result.message = "Signal Command Test Complete." ;
            result.data = {a:"A String", b:["red","yellow","blue"], c:8};
            complete(result);
		}

        public function complete(value:CommandNotification):void
        {
            myCallback.apply(null,[value]);
        }
	}
}