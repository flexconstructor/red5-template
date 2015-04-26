/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.controller
{

import robotlegs.bender.bundles.mvcs.Command;

import ru.flexconstructor.robotlegs.events.AppEvent;
import ru.flexconstructor.robotlegs.model.LoginVO;
import ru.flexconstructor.robotlegs.services.IConnectionService;


public class LoginCommand extends Command
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

    public function LoginCommand()
    {
        super();
    }

    override public function execute():void{

        trace("login: ", event.data.login)
        trace("password: ", event.data.password)
        //this.connectionService.connect(LoginVO(event.data));

    }
}
}
