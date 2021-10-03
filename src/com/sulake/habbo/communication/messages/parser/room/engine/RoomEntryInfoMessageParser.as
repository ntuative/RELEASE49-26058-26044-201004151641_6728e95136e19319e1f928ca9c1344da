package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2043:int;
      
      private var var_400:Boolean;
      
      private var var_2044:Boolean;
      
      private var var_869:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2044 = param1.readBoolean();
         if(var_2044)
         {
            var_2043 = param1.readInteger();
            var_400 = param1.readBoolean();
         }
         else
         {
            var_869 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_869 != null)
         {
            var_869.dispose();
            var_869 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2043;
      }
      
      public function get owner() : Boolean
      {
         return var_400;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2044;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_869;
      }
   }
}
