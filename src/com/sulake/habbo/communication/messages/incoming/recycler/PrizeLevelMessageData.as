package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2053:int;
      
      private var var_1159:int;
      
      private var var_702:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1159 = param1.readInteger();
         var_2053 = param1.readInteger();
         var_702 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_702.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2053;
      }
      
      public function get prizes() : Array
      {
         return var_702;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1159;
      }
   }
}
