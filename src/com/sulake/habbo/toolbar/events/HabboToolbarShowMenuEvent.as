package com.sulake.habbo.toolbar.events
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   
   public class HabboToolbarShowMenuEvent extends Event
   {
      
      public static const const_687:String = "HTSME_DISPLAY_WINDOW";
      
      public static const const_1018:String = "HTSME_HIDE_WINDOW";
      
      public static const const_415:String = "HTSME_ANIMATE_MENU_OUT";
      
      public static const const_48:String = "HTSME_ANIMATE_MENU_IN";
       
      
      private var var_1816:String;
      
      private var var_2211:Boolean;
      
      private var _window:IWindowContainer;
      
      public function HabboToolbarShowMenuEvent(param1:String, param2:String, param3:IWindowContainer, param4:Boolean = true, param5:Boolean = false, param6:Boolean = false)
      {
         var_1816 = param2;
         _window = param3;
         var_2211 = param4;
         super(param1,param5,param6);
      }
      
      public function get window() : IWindowContainer
      {
         return _window;
      }
      
      public function get menuId() : String
      {
         return var_1816;
      }
      
      public function get alignToIcon() : Boolean
      {
         return var_2211;
      }
   }
}
