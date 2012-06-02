package model{
import actions.base.Notification;

public class ScoreModel{

        public function ScoreModel(){
        }

        [Inject(name="ScoresNotification")]
        public var scoresNotification:Notification;

        private var _score:uint;

        public function get score():uint {
            return _score;
        }

        public function set score(value:uint):void {
            _score = value;
            if(value > highScore){
                highScore = value;
            }
            modelUpdated();
        }

        private var _highScore:uint = 5150;

        public function get highScore():uint {
            return _highScore;
        }

        public function set highScore(value:uint):void {
            _highScore = value;
            modelUpdated();
        }

        private function modelUpdated():void{
            scoresNotification.dispatch(true, "", {score:score, highScore:highScore});
        }
    }
}
