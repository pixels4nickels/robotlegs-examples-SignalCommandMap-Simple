package control
{
	import org.osflash.signals.Signal;

	public class TestSignal extends Signal
	{
		public function TestSignal()
		{
			super(String, int);
		}
	}
}