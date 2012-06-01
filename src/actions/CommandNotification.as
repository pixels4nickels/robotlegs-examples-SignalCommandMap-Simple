package actions {
    public class CommandNotification {
        public function CommandNotification() {
        }
        private var _success:Boolean;

        public function get success():Boolean {
            return _success;
        }

        public function set success(value:Boolean):void {
            _success = value;
        }

        private var _message:String;

        public function get message():String {
            return _message;
        }

        public function set message(value:String):void {
            _message = value;
        }

        private var _data:Object;

        public function get data():Object {
            return _data;
        }

        public function set data(value:Object):void {
            _data = value;
        }
    }
}
