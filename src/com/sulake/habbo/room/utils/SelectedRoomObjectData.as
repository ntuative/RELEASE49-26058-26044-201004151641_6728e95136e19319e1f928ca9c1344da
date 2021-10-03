package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_68:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_211:Vector3d = null;
      
      private var var_2104:int = 0;
      
      private var var_2197:String = null;
      
      private var _category:int = 0;
      
      private var var_2196:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2196 = param3;
         var_68 = new Vector3d();
         var_68.assign(param4);
         var_211 = new Vector3d();
         var_211.assign(param5);
         var_2104 = param6;
         var_2197 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_68;
      }
      
      public function get typeId() : int
      {
         return var_2104;
      }
      
      public function get dir() : Vector3d
      {
         return var_211;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2197;
      }
      
      public function get operation() : String
      {
         return var_2196;
      }
      
      public function dispose() : void
      {
         var_68 = null;
         var_211 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
