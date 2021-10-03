package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_814:LegacyWallGeometry = null;
      
      private var var_580:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_578:TileHeightMap = null;
      
      private var var_1846:String = null;
      
      private var _roomId:int = 0;
      
      private var var_579:SelectedRoomObjectData = null;
      
      private var var_813:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_814 = new LegacyWallGeometry();
         var_813 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_580 != null)
         {
            var_580.dispose();
         }
         var_580 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_578 != null)
         {
            var_578.dispose();
         }
         var_578 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1846 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_814;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_579;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_813;
      }
      
      public function dispose() : void
      {
         if(var_578 != null)
         {
            var_578.dispose();
            var_578 = null;
         }
         if(var_814 != null)
         {
            var_814.dispose();
            var_814 = null;
         }
         if(var_813 != null)
         {
            var_813.dispose();
            var_813 = null;
         }
         if(var_580 != null)
         {
            var_580.dispose();
            var_580 = null;
         }
         if(var_579 != null)
         {
            var_579.dispose();
            var_579 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_578;
      }
      
      public function get worldType() : String
      {
         return var_1846;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_579 != null)
         {
            var_579.dispose();
         }
         var_579 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_580;
      }
   }
}
