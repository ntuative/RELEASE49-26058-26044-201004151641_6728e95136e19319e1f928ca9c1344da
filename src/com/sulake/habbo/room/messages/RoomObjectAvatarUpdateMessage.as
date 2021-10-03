package com.sulake.habbo.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectAvatarUpdateMessage extends RoomObjectMoveUpdateMessage
   {
       
      
      private var var_1683:int;
      
      public function RoomObjectAvatarUpdateMessage(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:int)
      {
         super(param1,param2,param3);
         var_1683 = param4;
      }
      
      public function get dirHead() : int
      {
         return var_1683;
      }
   }
}
