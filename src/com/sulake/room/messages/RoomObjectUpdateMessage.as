package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_68:IVector3d;
      
      protected var var_211:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         var_68 = param1;
         var_211 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return var_68;
      }
      
      public function get dir() : IVector3d
      {
         return var_211;
      }
   }
}
