package actions
{
import actions.base.CommandNotification;

public class TestCommand
	{
		[Inject]
		public var myString:String;
		
		[Inject]
		public var myInt:int;

        [Inject]
        public var testCommandNotification:CommandNotification;
		
		public function execute():void
		{
            // imagine maybe some async operation here to get data.
            var data:Object = {a:"Some funky stuff.", b:["red","yellow","blue"], c:8};
            complete(true, "Signal Command Test Complete", data);
		}

        public function complete(success:Boolean, message:String, data:Object):void
        {
            testCommandNotification.dispatch(success, message, data);
        }
	}
}