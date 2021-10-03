package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1089:int = 0;
      
      private var var_1161:int = 0;
      
      private var var_1759:String = "";
      
      private var var_1088:int = 0;
      
      private var var_1755:String = "";
      
      private var var_1760:int = 0;
      
      private var var_1572:String = "";
      
      private var var_1757:int = 0;
      
      private var var_1758:int = 0;
      
      private var var_1754:String = "";
      
      private var var_1756:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1757 = param1;
         var_1754 = param2;
         var_1572 = param3;
         var_1759 = param4;
         var_1755 = param5;
         if(param6)
         {
            var_1161 = 1;
         }
         else
         {
            var_1161 = 0;
         }
         var_1760 = param7;
         var_1758 = param8;
         var_1088 = param9;
         var_1756 = param10;
         var_1089 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1757,var_1754,var_1572,var_1759,var_1755,var_1161,var_1760,var_1758,var_1088,var_1756,var_1089];
      }
      
      public function dispose() : void
      {
      }
   }
}
