package actions.base
{
import org.osflash.signals.Signal;

public class CommandNotification extends Signal
	{
		public function CommandNotification()
		{
			super(Boolean, String, Object);   // success, message, data
		}
	}
}