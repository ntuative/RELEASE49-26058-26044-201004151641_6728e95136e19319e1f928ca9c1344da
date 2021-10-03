package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_241:String = "WE_CHILD_RESIZED";
      
      public static const const_1389:String = "WE_CLOSE";
      
      public static const const_1139:String = "WE_DESTROY";
      
      public static const const_132:String = "WE_CHANGE";
      
      public static const const_1324:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1514:String = "WE_PARENT_RESIZE";
      
      public static const const_95:String = "WE_UPDATE";
      
      public static const const_1369:String = "WE_MAXIMIZE";
      
      public static const const_397:String = "WE_DESTROYED";
      
      public static const const_832:String = "WE_UNSELECT";
      
      public static const const_1342:String = "WE_MAXIMIZED";
      
      public static const const_1481:String = "WE_UNLOCKED";
      
      public static const const_394:String = "WE_CHILD_REMOVED";
      
      public static const const_179:String = "WE_OK";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1275:String = "WE_ACTIVATE";
      
      public static const const_258:String = "WE_ENABLED";
      
      public static const const_450:String = "WE_CHILD_RELOCATED";
      
      public static const const_1271:String = "WE_CREATE";
      
      public static const const_612:String = "WE_SELECT";
      
      public static const const_165:String = "";
      
      public static const const_1521:String = "WE_LOCKED";
      
      public static const const_1560:String = "WE_PARENT_RELOCATE";
      
      public static const const_1526:String = "WE_CHILD_REMOVE";
      
      public static const const_1456:String = "WE_CHILD_RELOCATE";
      
      public static const const_1470:String = "WE_LOCK";
      
      public static const const_193:String = "WE_FOCUSED";
      
      public static const const_568:String = "WE_UNSELECTED";
      
      public static const const_1025:String = "WE_DEACTIVATED";
      
      public static const const_1175:String = "WE_MINIMIZED";
      
      public static const const_1493:String = "WE_ARRANGED";
      
      public static const const_1542:String = "WE_UNLOCK";
      
      public static const const_1520:String = "WE_ATTACH";
      
      public static const const_1213:String = "WE_OPEN";
      
      public static const const_1256:String = "WE_RESTORE";
      
      public static const const_1508:String = "WE_PARENT_RELOCATED";
      
      public static const const_1374:String = "WE_RELOCATE";
      
      public static const const_1602:String = "WE_CHILD_RESIZE";
      
      public static const const_1572:String = "WE_ARRANGE";
      
      public static const const_1240:String = "WE_OPENED";
      
      public static const const_1176:String = "WE_CLOSED";
      
      public static const const_1624:String = "WE_DETACHED";
      
      public static const const_1509:String = "WE_UPDATED";
      
      public static const const_1267:String = "WE_UNFOCUSED";
      
      public static const const_456:String = "WE_RELOCATED";
      
      public static const const_1198:String = "WE_DEACTIVATE";
      
      public static const const_214:String = "WE_DISABLED";
      
      public static const const_642:String = "WE_CANCEL";
      
      public static const const_701:String = "WE_ENABLE";
      
      public static const const_1321:String = "WE_ACTIVATED";
      
      public static const const_1365:String = "WE_FOCUS";
      
      public static const const_1465:String = "WE_DETACH";
      
      public static const const_1258:String = "WE_RESTORED";
      
      public static const const_1230:String = "WE_UNFOCUS";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_1137:String = "WE_PARENT_RESIZED";
      
      public static const const_1313:String = "WE_CREATED";
      
      public static const const_1563:String = "WE_ATTACHED";
      
      public static const const_1395:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1615:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1398:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1615 = param3;
         var_1398 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1398;
      }
      
      public function get related() : IWindow
      {
         return var_1615;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1398 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
