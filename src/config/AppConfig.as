package config
{
    	import actions.base.CommandNotification;

	import actions.scores.GetScoresCommand;
	import actions.scores.GetScoresSignal;
	
	import actions.status.GetStatusCommand;
	import actions.status.GetStatusSignal;
	
	import behaviours.scores.IScoreDisplayable;
	import behaviours.scores.ScoreProvider;
	import behaviours.status.IStatusDisplayable;
	import behaviours.status.StatusProvider;

	import org.swiftsuspenders.Injector;

	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;

	public class AppConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;

		[Inject]
		public var commandMap:ISignalCommandMap;

		[Inject]
		public var injector:Injector;

		[PostConstruct]
		public function configure():void
		{
	            	// scores mapping
	            	injector.map(CommandNotification, "GetScoresNotification").asSingleton();
			commandMap.map( GetScoresSignal ).toCommand( GetScoresCommand );
	            	mediatorMap.map( IScoreDisplayable ).toMediator( ScoreProvider );
	
	            	// status mapping
	            	injector.map(CommandNotification, "GetStatusNotification").asSingleton();
	            	commandMap.map( GetStatusSignal ).toCommand( GetStatusCommand );
	            	mediatorMap.map( IStatusDisplayable ).toMediator( StatusProvider );
		}
	}
}
