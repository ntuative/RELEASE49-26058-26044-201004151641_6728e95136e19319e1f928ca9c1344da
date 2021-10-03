package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1482:int = 9;
      
      public static const const_1501:int = 4;
      
      public static const const_1606:int = 1;
      
      public static const const_1307:int = 10;
      
      public static const const_1614:int = 2;
      
      public static const const_1255:int = 7;
      
      public static const const_1353:int = 11;
      
      public static const const_1582:int = 3;
      
      public static const const_1156:int = 8;
      
      public static const const_1326:int = 5;
      
      public static const const_1597:int = 6;
      
      public static const const_1362:int = 12;
       
      
      private var var_2265:String;
      
      private var _roomId:int;
      
      private var var_1148:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2265;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1148 = param1.readInteger();
         var_2265 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1148;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
