package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_630:RoomObjectLocationCacheItem = null;
      
      private var var_167:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_630 = new RoomObjectLocationCacheItem(param1);
         var_167 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_630;
      }
      
      public function dispose() : void
      {
         if(var_630 != null)
         {
            var_630.dispose();
            var_630 = null;
         }
         if(var_167 != null)
         {
            var_167.dispose();
            var_167 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_167;
      }
   }
}
