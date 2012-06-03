package model
{
import org.osflash.signals.Signal;

public class Notification extends Signal
	{
		public function Notification()
		{
			super(String, Object);   // message, data
		}
	}
}