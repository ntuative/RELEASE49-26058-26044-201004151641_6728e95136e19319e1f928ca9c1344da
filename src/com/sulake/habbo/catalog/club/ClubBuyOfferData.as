package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1954:int;
      
      private var var_1956:Boolean = false;
      
      private var var_1952:int;
      
      private var var_1958:int;
      
      private var var_1955:int;
      
      private var var_1327:String;
      
      private var var_1282:int;
      
      private var _offerId:int;
      
      private var var_1959:int;
      
      private var var_1953:Boolean;
      
      private var var_1957:Boolean;
      
      private var var_399:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1327 = param2;
         var_1282 = param3;
         var_1957 = param4;
         var_1953 = param5;
         var_1952 = param6;
         var_1955 = param7;
         var_1958 = param8;
         var_1954 = param9;
         var_1959 = param10;
      }
      
      public function get month() : int
      {
         return var_1954;
      }
      
      public function get page() : ICatalogPage
      {
         return var_399;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1953;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_399 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_305;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1957;
      }
      
      public function get localizationId() : String
      {
         return var_1327;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1955;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1956;
      }
      
      public function get day() : int
      {
         return var_1959;
      }
      
      public function get year() : int
      {
         return var_1958;
      }
      
      public function get price() : int
      {
         return var_1282;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1956 = param1;
      }
      
      public function get periods() : int
      {
         return var_1952;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1282;
      }
      
      public function get productCode() : String
      {
         return var_1327;
      }
   }
}
