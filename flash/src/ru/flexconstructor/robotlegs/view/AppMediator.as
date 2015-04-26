/**
 * Created by pk on 24.04.15.
 */
package ru.flexconstructor.robotlegs.view
{

import mx.events.FlexEvent;

import robotlegs.bender.bundles.mvcs.Mediator;

import ru.flexconstructor.robotlegs.events.AppEvent;

import spark.components.Application;


public class AppMediator extends Mediator
{
    private var _view:Main
    [Inject]
    public function get view():Main
    {
        return _view;
    }

    public function set view(value:Main):void
    {
        _view = value;
    }

    public function AppMediator()
    {
        super();
    }

    override public function initialize():void{
      //  this.addContextListener(AppEvent.CONNECTION_STATUS,connectionStatusHandler);
        this.addContextListener(AppEvent.LOGIN,loginHandler);
        this.addViewListener(AppEvent.DISCONNECT,disconnectHandler);
        this.addViewListener(AppEvent.CONNECT,connectHandler);
    }


   /* private function connectionStatusHandler(event:AppEvent):void
    {
        switch(event.data.code){
            case "NetConnection.Connect.Success":
               this.view.currentState="logged_in";
                break;
            case "NetConnection.Connect.Closed":
                this.view.currentState="error";
                break;

        }
    }*/

    private  function connectHandler(e:AppEvent):void{
        this.dispatch(e.clone())
        this.view.currentState="connection";
        trace("connect")

    }

    private function disconnectHandler(e:AppEvent):void{

        this.dispatch(e.clone());
    }

    private function loginHandler(event:AppEvent):void
    {
       // trace("connect")
       // this.dispatch(event.clone())
        //this.view.currentState="connection";
    }
}
}
