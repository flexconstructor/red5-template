/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.model
{

import flash.utils.Proxy;


public class LoginVO
{
    public function LoginVO()
    {
        super();
    }

    private var _login:String;
    private var _password:String;

    [Bindable]
    public function get login():String
    {
        return _login;
    }

    public function set login(value:String):void
    {
        _login = value;
    }

    [Bindable]
    public function get password():String
    {
        return _password;
    }

    public function set password(value:String):void
    {
        _password = value;
    }
}
}
