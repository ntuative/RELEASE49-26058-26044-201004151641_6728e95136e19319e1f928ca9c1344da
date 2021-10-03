package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1965:String;
      
      private var var_1178:String;
      
      private var var_1966:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1966 = param1;
         var_1178 = param2;
         var_1965 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1966,var_1178,var_1965];
      }
      
      public function dispose() : void
      {
      }
   }
}
