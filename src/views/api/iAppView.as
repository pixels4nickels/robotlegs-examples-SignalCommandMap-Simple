package views.api
{
	import org.osflash.signals.ISignal;
	import control.TestSignal;

	public interface iAppView
	{
		function set myButtonSignal(value:TestSignal):void;
	}
}