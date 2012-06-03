package behaviours.status
{

    import model.Notification;
    import robotlegs.bender.bundles.mvcs.Mediator;

    public class StatusProvider extends Mediator
    {
        [Inject]
        public var view:IStatusDisplayable;
    
        [Inject(name="StatusNotification")]
        public var statusNotification:Notification;
    
        override public function initialize():void
        {
            statusNotification.add(handleStatusNotification);
        }
    
        public function handleStatusNotification(message:String, data:Object):void
        {
            view.statusMessage = message;
        }
    }
}
