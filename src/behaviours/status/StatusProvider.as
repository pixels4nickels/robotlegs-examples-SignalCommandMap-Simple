package behaviours.status
{

    import actions.base.Notification;
    import robotlegs.bender.bundles.mvcs.Mediator;

    public class StatusProvider extends Mediator
    {
        [Inject]
        public var view:IStatusDisplayable;
    
        [Inject(name="StatusNotification")]
        public var getStatusNotification:Notification;

        public function StatusProvider()
        {
        }
    
        override public function initialize():void
        {
            getStatusNotification.add(handleStatusNotification);
        }
    
        public function handleStatusNotification(success:Boolean, message:String, data:Object):void
        {
            view.statusMessage = message;
        }
    }
}
