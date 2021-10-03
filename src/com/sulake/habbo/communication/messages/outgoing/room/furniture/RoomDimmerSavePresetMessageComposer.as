package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1877:int;
      
      private var var_1879:int;
      
      private var var_1876:Boolean;
      
      private var var_1878:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1875:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1879 = param1;
         var_1877 = param2;
         var_1878 = param3;
         var_1875 = param4;
         var_1876 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1879,var_1877,var_1878,var_1875,int(var_1876)];
      }
      
      public function dispose() : void
      {
      }
   }
}
