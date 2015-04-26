/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.controller
{

import robotlegs.bender.bundles.mvcs.Command;

import ru.flexconstructor.robotlegs.services.IConnectionService;


public class DisconnectCommand extends Command
{
    private var _connectionService:IConnectionService;
    public function get connectionService():IConnectionService
    {
        return _connectionService;
    }
    [Inject]
    public function set connectionService(value:IConnectionService):void
    {
        _connectionService = value;
    }

    public function DisconnectCommand()
    {
        super();
    }

    override  public  function  execute():void{
        this.connectionService.disconnect();

    }
}
}
