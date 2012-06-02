package behaviours.status
{

    import actions.base.CommandNotification;
    import actions.status.GetStatusSignal;
    import behaviours.status.IStatusDisplayable;
    import robotlegs.bender.bundles.mvcs.Mediator;

    public class StatusProvider extends Mediator
    {
        [Inject]
        public var view:IStatusDisplayable;
    
        [Inject]
        public var testSignal:GetStatusSignal;
    
        [Inject(name="GetStatusNotification")]
        public var getStatusNotification:CommandNotification;
    
        public function StatusProvider()
        {
        }
    
        override public function initialize():void
        {
            getStatusNotification.add(handleGetStatusResult);
            view.getStatusSignal = testSignal;
        }
    
        public function handleGetStatusResult(success:Boolean, message:String, data:Object):void
        {
            view.getStatusResult(success, message, data);
        }
    }
}
