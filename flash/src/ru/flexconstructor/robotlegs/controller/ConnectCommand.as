/**
 * Created by pk on 25.04.15.
 */
package ru.flexconstructor.robotlegs.controller
{

import robotlegs.bender.bundles.mvcs.Command;

import ru.flexconstructor.robotlegs.events.AppEvent;
import ru.flexconstructor.robotlegs.services.IConnectionService;


public class ConnectCommand extends Command
{
    public function ConnectCommand()
    {
        super();
    }

    private var _connectionService:IConnectionService;

    [Inject]
    public function get connectionService():IConnectionService
    {
        return _connectionService;
    }

    public function set connectionService(value:IConnectionService):void
    {
        _connectionService = value;
    }

    private var _event:AppEvent;

    public function get event():AppEvent
    {
        return _event;
    }

    [Inject]
    public function set event(value:AppEvent):void
    {
        _event = value;
    }

    override public function execute():void
    {
        trace("CONNECT: "+event.data)
        this.connectionService.connect(String(event.data));
    }
}
}
