package behaviours.start
{
    import actions.start.StartTrigger;
    import robotlegs.bender.bundles.mvcs.Mediator;

    public class StartTriggerProvider extends Mediator
    {
        [Inject]
        public var view:IStartable;

        [Inject]
        public var initTrigger:StartTrigger;

        override public function initialize():void
        {
            view.initTrigger = initTrigger;
        }
    }
}
