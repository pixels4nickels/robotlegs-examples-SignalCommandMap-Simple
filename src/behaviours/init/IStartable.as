package behaviours.init {
    import actions.init.StartTrigger;

    public interface IStartable {
        function set initTrigger(value:StartTrigger):void;
    }
}
