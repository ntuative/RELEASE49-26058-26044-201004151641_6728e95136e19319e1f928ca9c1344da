package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_109:String = "RSPE_POLL_CONTENT";
      
      public static const const_117:String = "RSPE_POLL_OFFER";
      
      public static const const_68:String = "RSPE_POLL_ERROR";
       
      
      private var var_1061:Array = null;
      
      private var var_1286:String = "";
      
      private var var_1380:String;
      
      private var var_1287:String = "";
      
      private var var_1062:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1061;
      }
      
      public function get startMessage() : String
      {
         return var_1286;
      }
      
      public function get summary() : String
      {
         return var_1380;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1286 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1062 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1380 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1062;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1287 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1287;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1061 = param1;
      }
   }
}
