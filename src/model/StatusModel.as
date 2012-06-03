package model {
import model.Notification;

public class StatusModel {

        public function StatusModel() {
        }

        [Inject(name="StatusNotification")]
        public var statusNotification:Notification;

        private var _status:String;

        public function get status():String {
            return _status;
        }

        public function set status(value:String):void {
            _status = value;
            modelUpdated();
        }

        public function modelUpdated():void{
            statusNotification.dispatch(status, null);
        }
    }
}
