package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_114:String = "RSPE_VOTE_RESULT";
      
      public static const const_123:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1313:int = 0;
      
      private var var_1097:String = "";
      
      private var var_757:Array;
      
      private var var_1055:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1055 = [];
         var_757 = [];
         super(param1,param2,param7,param8);
         var_1097 = param3;
         var_1055 = param4;
         var_757 = param5;
         if(var_757 == null)
         {
            var_757 = [];
         }
         var_1313 = param6;
      }
      
      public function get votes() : Array
      {
         return var_757.slice();
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
   }
}
