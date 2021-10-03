package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1600:int;
      
      private var var_1601:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1600;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1600 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1600 = this.var_1600;
         _loc1_.var_1601 = this.var_1601;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1601 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1601;
      }
   }
}
