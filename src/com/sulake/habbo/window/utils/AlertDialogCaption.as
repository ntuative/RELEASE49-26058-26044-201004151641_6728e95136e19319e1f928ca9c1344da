package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_361:Boolean;
      
      private var var_189:String;
      
      private var var_1150:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_189 = param1;
         var_1150 = param2;
         var_361 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1150;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_361 = param1;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get visible() : Boolean
      {
         return var_361;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1150 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_189 = param1;
      }
   }
}
