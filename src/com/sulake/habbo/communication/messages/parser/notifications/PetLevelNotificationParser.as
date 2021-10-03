package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_293:String;
      
      private var var_1653:int;
      
      private var var_2130:String;
      
      private var var_970:int;
      
      private var var_1138:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1138;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1138 = param1.readInteger();
         var_2130 = param1.readString();
         var_1653 = param1.readInteger();
         var_293 = param1.readString();
         var_970 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2130;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_293;
      }
      
      public function get petType() : int
      {
         return var_970;
      }
      
      public function get level() : int
      {
         return var_1653;
      }
   }
}
