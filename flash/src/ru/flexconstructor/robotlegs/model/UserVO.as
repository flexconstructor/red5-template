/**
 * Created by pk on 25.04.15.
 */
package ru.flexconstructor.robotlegs.model
{

public class UserVO
{
    private var _sessionID:String;
    private var  _userName:String;
    public function UserVO()
    {
    }

    public function get sessionID():String
    {
        return _sessionID;
    }

    public function set sessionID(value:String):void
    {
        _sessionID = value;
    }

    public function get userName():String
    {
        return _userName;
    }

    public function set userName(value:String):void
    {
        _userName = value;
    }
}
}
