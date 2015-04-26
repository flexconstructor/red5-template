/**
 * Created by pk on 25.04.15.
 */
package ru.flexconstructor.robotlegs.controller
{

import robotlegs.bender.bundles.mvcs.Command;

import ru.flexconstructor.robotlegs.events.AppEvent;


public class ConnectionRejectedCommand extends Command
{
    private var _event:AppEvent
    [Inject]
    public function get event():AppEvent
    {
        return _event;
    }

    public function set event(value:AppEvent):void
    {
        _event = value;
    }

    public function ConnectionRejectedCommand()
    {
        super();
    }


    override public function execute():void{
        var params:String=String(event.data);
        trace("connection rejected: ",params);


    }
}
}
