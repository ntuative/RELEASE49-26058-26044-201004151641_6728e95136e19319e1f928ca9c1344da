package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserNameChangedMessageParser implements IMessageParser
   {
       
      
      private var var_1349:String;
      
      private var var_1350:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      public function UserNameChangedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1350 = param1.readInteger();
         _id = param1.readInteger();
         var_1349 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1350 = -1;
         _id = -1;
         var_1349 = "";
         return true;
      }
      
      public function get newName() : String
      {
         return var_1349;
      }
      
      public function get method_7() : int
      {
         return var_1350;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
