package actions.test{
    import org.osflash.signals.Signal;

    public class TestTrigger extends Signal{
        public function TestTrigger() {
            super(String, int); // test param 1, test param 2
        }
    }
}
