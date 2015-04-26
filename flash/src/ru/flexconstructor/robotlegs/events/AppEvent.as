/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.events
{

import flash.events.Event;


public class AppEvent extends Event
{
    public static const LOGIN:String="app.login"
    public static const CONNECTION_STATUS:String="connection_status";
    public  static const DISCONNECT:String="app.disconnect";
    public static const CONNECT:String="app.connect";
    public static const CONNECTION_REJECTED:String="app.connection_rejected";
    private var _data:Object
    public function get data():Object
    {
        return _data;
    }

    public function AppEvent(
        type:String, data:Object=null, bubbles:Boolean = false, cancelable:Boolean = false)
    {
        super(type, bubbles, cancelable);
        this._data=data;
    }

    override public function clone():Event{
        return new AppEvent(this.type,this.data);
    }
}
}
