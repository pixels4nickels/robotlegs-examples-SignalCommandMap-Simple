package actions.enemy
{
import actions.base.Notification;

import model.ScoreModel;

public class EnemyDestroyedCommand
{
    [Inject(name="StatusNotification")]
    public var statusNotification:Notification;

    [Inject]
    public var enemyType:String;

    [Inject]
    public var scoreModel:ScoreModel;

    public function execute():void
    {
        switch(enemyType){
            case "Drone":
                scoreModel.score += 10;
                break;
            case "Shuttle":
                scoreModel.score += 25;
                break;
            case "Warship":
                scoreModel.score += 100;
                break;
            case "Mothership":
                scoreModel.score += 500;
                break;
        }
        var data:Object = {highScore:scoreModel.highScore, score:scoreModel.score};
        complete(true, enemyType + " Destroyed", data);
    }

    public function complete(success:Boolean, message:String, data:Object):void
    {
        statusNotification.dispatch(success, message, null);
    }
}
}