package actions.enemy {
import org.osflash.signals.Signal;

public class EnemyDestroyedTrigger extends Signal{
    public function EnemyDestroyedTrigger() {
        super(String); // enemy type
    }
}
}
