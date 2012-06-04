package behaviours.test
{
	import actions.test.TestTrigger;
	
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	public class TestTriggerProvider extends Mediator
	{
		public function TestTriggerProvider()
		{
			super();
		}
		
		[Inject]
		public var testTrigger:TestTrigger;
		
		[Inject]
		public var view:ITriggerTestable;
		
		override public function initialize():void
		{
			super.initialize();
			view.testTrigger = testTrigger;
		}		
	}
}