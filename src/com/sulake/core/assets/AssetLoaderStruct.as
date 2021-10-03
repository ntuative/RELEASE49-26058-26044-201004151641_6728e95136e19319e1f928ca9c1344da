package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_679:IAssetLoader;
      
      private var var_1362:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1362 = param1;
         var_679 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_679;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_679 != null)
            {
               if(true)
               {
                  var_679.dispose();
                  var_679 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1362;
      }
   }
}
