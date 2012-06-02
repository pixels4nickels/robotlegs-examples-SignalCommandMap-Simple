package actions.status
{
import actions.base.CommandNotification;

public class GetStatusCommand
{
    [Inject(name="GetStatusNotification")]
    public var getStatusNotification:CommandNotification;

    public function execute():void
    {
        // imagine maybe some async operation here to get data.
        var data:Object = {status:"All Systems Go."};
        complete(true, "Get Status Complete", data);
    }

    public function complete(success:Boolean, message:String, data:Object):void
    {
        getStatusNotification.dispatch(success, message, data);
    }
}
}
