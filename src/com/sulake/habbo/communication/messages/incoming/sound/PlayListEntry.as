package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1775:int;
      
      private var var_2011:int = 0;
      
      private var var_2009:String;
      
      private var var_2012:int;
      
      private var var_2010:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1775 = param1;
         var_2012 = param2;
         var_2010 = param3;
         var_2009 = param4;
      }
      
      public function get length() : int
      {
         return var_2012;
      }
      
      public function get name() : String
      {
         return var_2010;
      }
      
      public function get creator() : String
      {
         return var_2009;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2011;
      }
      
      public function get id() : int
      {
         return var_1775;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2011 = param1;
      }
   }
}
