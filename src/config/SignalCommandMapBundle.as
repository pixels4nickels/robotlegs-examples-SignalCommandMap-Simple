/**
 * Created with IntelliJ IDEA.
 * User: kenrogers
 * Date: 6/1/12
 * Time: 4:32 PM
 * To change this template use File | Settings | File Templates.
 */
package config {
import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
import robotlegs.bender.framework.api.IContext;
import robotlegs.bender.framework.api.IExtension;

public class SignalCommandMapBundle implements IExtension {

    /*============================================================================*/
    /* Public Functions                                                           */
    /*============================================================================*/

    public function extend(context:IContext):void {
        context.install(

                SignalCommandMapExtension);

        //context.configure(ContextViewListenerConfig);
    }
}
}
