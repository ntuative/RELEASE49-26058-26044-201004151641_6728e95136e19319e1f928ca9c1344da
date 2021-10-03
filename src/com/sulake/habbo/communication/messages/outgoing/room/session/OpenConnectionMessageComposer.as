package com.sulake.habbo.communication.messages.outgoing.room.session
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenConnectionMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int;
      
      private var var_2033:int;
      
      private var var_2034:Boolean;
      
      public function OpenConnectionMessageComposer(param1:Boolean, param2:int, param3:int = 0)
      {
         super();
         _roomId = param2;
         var_2034 = param1;
         var_2033 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [int(var_2034),_roomId,var_2033];
      }
      
      public function dispose() : void
      {
      }
   }
}
