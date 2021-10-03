package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1188:String = "WN_CREATED";
      
      public static const const_923:String = "WN_DISABLE";
      
      public static const const_872:String = "WN_DEACTIVATED";
      
      public static const const_862:String = "WN_OPENED";
      
      public static const const_987:String = "WN_CLOSED";
      
      public static const const_826:String = "WN_DESTROY";
      
      public static const const_1575:String = "WN_ARRANGED";
      
      public static const const_452:String = "WN_PARENT_RESIZED";
      
      public static const const_989:String = "WN_ENABLE";
      
      public static const const_891:String = "WN_RELOCATE";
      
      public static const const_910:String = "WN_FOCUS";
      
      public static const const_875:String = "WN_PARENT_RELOCATED";
      
      public static const const_358:String = "WN_PARAM_UPDATED";
      
      public static const const_530:String = "WN_PARENT_ACTIVATED";
      
      public static const const_171:String = "WN_RESIZED";
      
      public static const const_852:String = "WN_CLOSE";
      
      public static const const_890:String = "WN_PARENT_REMOVED";
      
      public static const const_239:String = "WN_CHILD_RELOCATED";
      
      public static const const_669:String = "WN_ENABLED";
      
      public static const const_275:String = "WN_CHILD_RESIZED";
      
      public static const const_865:String = "WN_MINIMIZED";
      
      public static const const_652:String = "WN_DISABLED";
      
      public static const const_195:String = "WN_CHILD_ACTIVATED";
      
      public static const const_390:String = "WN_STATE_UPDATED";
      
      public static const const_728:String = "WN_UNSELECTED";
      
      public static const const_391:String = "WN_STYLE_UPDATED";
      
      public static const const_1522:String = "WN_UPDATE";
      
      public static const const_422:String = "WN_PARENT_ADDED";
      
      public static const const_589:String = "WN_RESIZE";
      
      public static const const_730:String = "WN_CHILD_REMOVED";
      
      public static const const_1462:String = "";
      
      public static const const_915:String = "WN_RESTORED";
      
      public static const const_334:String = "WN_SELECTED";
      
      public static const const_869:String = "WN_MINIMIZE";
      
      public static const const_966:String = "WN_FOCUSED";
      
      public static const const_1184:String = "WN_LOCK";
      
      public static const const_289:String = "WN_CHILD_ADDED";
      
      public static const const_907:String = "WN_UNFOCUSED";
      
      public static const const_395:String = "WN_RELOCATED";
      
      public static const const_902:String = "WN_DEACTIVATE";
      
      public static const const_1350:String = "WN_CRETAE";
      
      public static const const_1016:String = "WN_RESTORE";
      
      public static const const_327:String = "WN_ACTVATED";
      
      public static const const_1151:String = "WN_LOCKED";
      
      public static const const_454:String = "WN_SELECT";
      
      public static const const_833:String = "WN_MAXIMIZE";
      
      public static const const_828:String = "WN_OPEN";
      
      public static const const_658:String = "WN_UNSELECT";
      
      public static const const_1449:String = "WN_ARRANGE";
      
      public static const const_1192:String = "WN_UNLOCKED";
      
      public static const const_1495:String = "WN_UPDATED";
      
      public static const const_886:String = "WN_ACTIVATE";
      
      public static const const_1302:String = "WN_UNLOCK";
      
      public static const const_935:String = "WN_MAXIMIZED";
      
      public static const const_1015:String = "WN_DESTROYED";
      
      public static const const_949:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1615,cancelable);
      }
   }
}
