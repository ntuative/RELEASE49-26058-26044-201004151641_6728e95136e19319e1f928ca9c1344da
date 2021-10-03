package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_778:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_778 = new Array();
         var_778.push(param1.length);
         var_778 = var_778.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_778;
      }
   }
}
