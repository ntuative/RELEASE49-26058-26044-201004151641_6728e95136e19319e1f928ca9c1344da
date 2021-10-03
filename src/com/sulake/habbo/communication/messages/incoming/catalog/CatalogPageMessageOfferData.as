package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_874:Array;
      
      private var var_784:int;
      
      private var var_1136:String;
      
      private var _offerId:int;
      
      private var var_783:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1136 = param1.readString();
         var_784 = param1.readInteger();
         var_783 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_874 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_874.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_874;
      }
      
      public function get priceInCredits() : int
      {
         return var_784;
      }
      
      public function get localizationId() : String
      {
         return var_1136;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_783;
      }
   }
}
