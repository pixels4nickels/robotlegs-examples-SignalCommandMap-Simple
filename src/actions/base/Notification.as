package actions.base
{
import org.osflash.signals.Signal;

public class Notification extends Signal
	{
		public function Notification()
		{
			super(Boolean, String, Object);   // success, message, data
		}
	}
}