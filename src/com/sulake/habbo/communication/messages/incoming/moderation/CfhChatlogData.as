package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1777:int;
      
      private var var_1096:int;
      
      private var var_1778:int;
      
      private var var_1442:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1442 = param1.readInteger();
         var_1778 = param1.readInteger();
         var_1096 = param1.readInteger();
         var_1777 = param1.readInteger();
         var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1442);
      }
      
      public function get chatRecordId() : int
      {
         return var_1777;
      }
      
      public function get reportedUserId() : int
      {
         return var_1096;
      }
      
      public function get callerUserId() : int
      {
         return var_1778;
      }
      
      public function get callId() : int
      {
         return var_1442;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_114;
      }
   }
}
