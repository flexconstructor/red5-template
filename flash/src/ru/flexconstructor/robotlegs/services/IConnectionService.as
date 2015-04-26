/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.services
{

import ru.flexconstructor.robotlegs.model.LoginVO;


public interface IConnectionService
{
    function connect(username:String):void
    function disconnect():void
}
}
