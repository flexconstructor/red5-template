/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.view
{

import robotlegs.bender.bundles.mvcs.Mediator;

import ru.flexconstructor.robotlegs.events.AppEvent;


public class LoginPanelMediator extends Mediator
{
    public function LoginPanelMediator()
    {
        super();
    }

    override public function initialize():void{

        this.addViewListener(AppEvent.LOGIN,loginHandler);
    }

    private function loginHandler(event:AppEvent):void
    {
        trace("data: "+event.data)
       this.dispatch(event.clone())
    }
}
}
