package actions
{
import org.osflash.signals.Signal;

public class TestCommandNotification extends Signal
	{
		public function TestCommandNotification()
		{
			super(Boolean, String, Object);   // success, message, data
		}
	}
}