/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.services
{

import flash.events.IEventDispatcher;
import flash.events.NetStatusEvent;
import flash.net.NetConnection;

import ru.flexconstructor.robotlegs.events.AppEvent;

import ru.flexconstructor.robotlegs.model.LoginVO;
import ru.flexconstructor.robotlegs.model.Settings;


public class ConnectionService extends Object implements IConnectionService
{
    private var _netConnection:NetConnection;
    private var _eventDispatcher:IEventDispatcher

    [Inject]
    public function get eventDispatcher():IEventDispatcher
    {
        return _eventDispatcher;
    }

    public function set eventDispatcher(value:IEventDispatcher):void
    {
        _eventDispatcher = value;
    }

    public function ConnectionService()
    {
        super();
    }

    public function connect(username:String):void{
        trace("CONNECT")
        _netConnection=new NetConnection();
        _netConnection.addEventListener(NetStatusEvent.NET_STATUS,
            netConnection_netStatusHandler);
        _netConnection.connect(Settings.RTMP_URL,{user:username});
    }

    public function disconnect():void{
       if(this._netConnection.connected)
       this._netConnection.close();
        _netConnection.removeEventListener(NetStatusEvent.NET_STATUS,
                                        netConnection_netStatusHandler);
        _netConnection=null;
    }

    private function netConnection_netStatusHandler(event:NetStatusEvent):void
    {
       // trace("STATUS: "+event.info.code);
       // this.eventDispatcher.dispatchEvent(new AppEvent(AppEvent.CONNECTION_STATUS,event.info));
        trace("STATUS: "+event.info.code);
        trace("DESCRIPTION: "+event.info.description);
        switch(event.info.code){
            case "NetConnection.Connect.Rejected":
                this.eventDispatcher.dispatchEvent(new AppEvent(AppEvent.CONNECTION_REJECTED,event.info.description))

        }

    }
}
}
