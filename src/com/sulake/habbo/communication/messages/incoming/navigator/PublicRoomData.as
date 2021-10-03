package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2068:int;
      
      private var var_2180:String;
      
      private var var_1761:int;
      
      private var _disposed:Boolean;
      
      private var var_2179:int;
      
      private var var_1980:String;
      
      private var var_1314:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1980 = param1.readString();
         var_2068 = param1.readInteger();
         var_1761 = param1.readInteger();
         var_2180 = param1.readString();
         var_2179 = param1.readInteger();
         var_1314 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2179;
      }
      
      public function get worldId() : int
      {
         return var_1761;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1980;
      }
      
      public function get unitPort() : int
      {
         return var_2068;
      }
      
      public function get castLibs() : String
      {
         return var_2180;
      }
      
      public function get nodeId() : int
      {
         return var_1314;
      }
   }
}
