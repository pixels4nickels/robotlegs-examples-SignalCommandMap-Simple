package behaviours.status
{
    import actions.status.GetStatusSignal;

    public interface IStatusDisplayable
    {
        function set getStatusSignal(value:GetStatusSignal):void;
        function getStatusResult(success:Boolean, message:String, data:Object):void;
    }
}