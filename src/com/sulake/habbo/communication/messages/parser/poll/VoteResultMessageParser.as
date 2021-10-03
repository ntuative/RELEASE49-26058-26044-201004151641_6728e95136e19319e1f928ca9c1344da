package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1313:int;
      
      private var var_1097:String;
      
      private var var_757:Array;
      
      private var var_1055:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_757.slice();
      }
      
      public function flush() : Boolean
      {
         var_1097 = "";
         var_1055 = [];
         var_757 = [];
         var_1313 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1313;
      }
      
      public function get question() : String
      {
         return var_1097;
      }
      
      public function get choices() : Array
      {
         return var_1055.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1097 = param1.readString();
         var_1055 = [];
         var_757 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1055.push(param1.readString());
            var_757.push(param1.readInteger());
            _loc3_++;
         }
         var_1313 = param1.readInteger();
         return true;
      }
   }
}
