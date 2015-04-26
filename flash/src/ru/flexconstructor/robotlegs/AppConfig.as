/**
 * Created by pk on 21.04.15.
 */
package ru.flexconstructor.robotlegs
{

import components.LoginPanel;

import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
import robotlegs.bender.framework.api.IConfig;
import robotlegs.bender.framework.api.IInjector;

import ru.flexconstructor.robotlegs.controller.ConnectCommand;
import ru.flexconstructor.robotlegs.controller.ConnectionRejectedCommand;

import ru.flexconstructor.robotlegs.controller.DisconnectCommand;

import ru.flexconstructor.robotlegs.controller.LoginCommand;

import ru.flexconstructor.robotlegs.events.AppEvent;
import ru.flexconstructor.robotlegs.services.ConnectionService;
import ru.flexconstructor.robotlegs.services.IConnectionService;
import ru.flexconstructor.robotlegs.view.AppMediator;

import ru.flexconstructor.robotlegs.view.LoginPanelMediator;


public class AppConfig implements IConfig
{
    [Inject]
    public var injector:IInjector;

    [Inject]
    public var mediatorMap:IMediatorMap;

    [Inject]
    public var commandMap:IEventCommandMap;


    public function AppConfig()
    {
    }

    public function configure():void
    {
        this.commandMap.map(AppEvent.LOGIN,AppEvent).toCommand(LoginCommand);
        this.commandMap.map(AppEvent.DISCONNECT).toCommand(DisconnectCommand);
        this.commandMap.map(AppEvent.CONNECT).toCommand(ConnectCommand);
        this.commandMap.map(AppEvent.CONNECTION_REJECTED).toCommand(ConnectionRejectedCommand)
        this.injector.map(IConnectionService).toSingleton(ConnectionService);
        mediatorMap.map(Main).toMediator(AppMediator);
        mediatorMap.map(LoginPanel).toMediator(LoginPanelMediator);
    }

}
}
