/**
 * Created by pk on 25.04.15.
 */
package ru.flexconstructor.robotlegs.model
{
import flash.events.Event;
import flash.events.IEventDispatcher;

public class BaseActor
{
    [Inject]
    public var eventDispatcher:IEventDispatcher;
    public function BaseActor()
    {
    }
    protected function dispatch(e:Event):void
    {
        if (eventDispatcher.hasEventListener(e.type))
            eventDispatcher.dispatchEvent(e);
    }
}

}
