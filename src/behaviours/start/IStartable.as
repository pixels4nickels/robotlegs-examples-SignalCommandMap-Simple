package behaviours.start {
    import actions.start.StartTrigger;

    public interface IStartable {
        function set initTrigger(value:StartTrigger):void;
    }
}
