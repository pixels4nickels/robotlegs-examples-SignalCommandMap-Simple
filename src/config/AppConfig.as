package config
{
    import actions.base.Notification;

    import actions.enemy.*;
    import actions.init.*;

    import behaviours.scores.*;
	import behaviours.status.*;
    import behaviours.enemy.*;
    import behaviours.init.*;

    import model.ScoreModel;

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
            injector.map( ScoreModel ).asSingleton();

            //actions
            commandMap.map( StartTrigger ).toCommand( StartCommand );
            commandMap.map( EnemyDestroyedTrigger ).toCommand( EnemyDestroyedCommand );

            // behaviours
            mediatorMap.map( IStartable ).toMediator( StartTriggerProvider );
            mediatorMap.map( IEnemyDestroyable ).toMediator( DestroyEnemyTriggerProvider );
            mediatorMap.map( IScoreDisplayable ).toMediator( ScoreProvider );
            mediatorMap.map( IStatusDisplayable ).toMediator( StatusProvider );

            //notifications
            injector.map(Notification, "ScoresNotification").asSingleton();
            injector.map(Notification, "StatusNotification").asSingleton();
        }
	}
}
