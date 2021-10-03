package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1817:Array;
      
      private var var_1816:String;
      
      private var var_1818:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1816 = param1;
         var_1817 = param2;
         var_1818 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1816;
      }
      
      public function get yieldList() : Array
      {
         return var_1817;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1818;
      }
   }
}
