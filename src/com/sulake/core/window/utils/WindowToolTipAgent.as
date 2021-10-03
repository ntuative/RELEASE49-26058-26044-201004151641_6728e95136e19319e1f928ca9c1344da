package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_322:Timer;
      
      protected var var_948:String;
      
      protected var var_949:uint;
      
      protected var var_1116:Point;
      
      protected var var_243:IToolTipWindow;
      
      protected var var_1115:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1116 = new Point();
         var_1115 = new Point(20,20);
         var_949 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_322 != null)
         {
            var_322.stop();
            var_322.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_322 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1116);
            if(var_243 != null && true)
            {
               var_243.x = param1 + var_1115.x;
               var_243.y = param2 + var_1115.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_322 != null)
         {
            var_322.reset();
         }
         if(_window && true)
         {
            if(var_243 == null || false)
            {
               var_243 = _window.context.create("undefined::ToolTip",var_948,WindowType.const_330,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_243.x = _loc2_.x + var_1116.x + var_1115.x;
            var_243.y = _loc2_.y + var_1116.y + var_1115.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_948 = IInteractiveWindow(param1).toolTipCaption;
               var_949 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_948 = param1.caption;
               var_949 = 500;
            }
            _mouse.x = var_117.mouseX;
            _mouse.y = var_117.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1116);
            if(var_948 != null && var_948 != "")
            {
               if(var_322 == null)
               {
                  var_322 = new Timer(var_949,1);
                  var_322.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_322.reset();
               var_322.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_243 != null && true)
         {
            var_243.destroy();
            var_243 = null;
         }
      }
   }
}
