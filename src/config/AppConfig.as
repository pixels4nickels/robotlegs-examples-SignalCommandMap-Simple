package config
{
import actions.start.StartCommand;
import actions.start.StartTrigger;

import behaviours.start.IStartable;
import behaviours.start.StartTriggerProvider;

import model.Notification;

    import actions.enemy.*;
    import actions.start.*;

    import behaviours.scores.*;
	import behaviours.status.*;
    import behaviours.enemy.*;
    import behaviours.start.*;

    import model.*;

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
            //models
            injector.map( ScoreModel ).asSingleton();
            injector.map( StatusModel ).asSingleton();

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
