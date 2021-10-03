package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_223:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_223 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_223;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_223 = new RoomSettingsFlatInfo();
         var_223.allowFurniMoving = param1.readInteger() == 1;
         var_223.doorMode = param1.readInteger();
         var_223.id = param1.readInteger();
         var_223.ownerName = param1.readString();
         var_223.type = param1.readString();
         var_223.name = param1.readString();
         var_223.description = param1.readString();
         var_223.showOwnerName = param1.readInteger() == 1;
         var_223.allowTrading = param1.readInteger() == 1;
         var_223.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
