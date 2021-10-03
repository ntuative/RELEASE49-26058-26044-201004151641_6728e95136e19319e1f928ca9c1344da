package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_809:String = "price_type_none";
      
      public static const const_411:String = "pricing_model_multi";
      
      public static const const_305:String = "price_type_credits";
      
      public static const const_478:String = "price_type_credits_and_pixels";
      
      public static const const_474:String = "pricing_model_bundle";
      
      public static const const_361:String = "pricing_model_single";
      
      public static const const_513:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1173:String = "pricing_model_unknown";
      
      public static const const_451:String = "price_type_pixels";
       
      
      private var var_1679:int;
      
      private var var_784:int;
      
      private var _offerId:int;
      
      private var var_783:int;
      
      private var var_387:String;
      
      private var var_557:String;
      
      private var var_399:ICatalogPage;
      
      private var var_386:IProductContainer;
      
      private var var_1136:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1136 = param1.localizationId;
         var_784 = param1.priceInCredits;
         var_783 = param1.priceInPixels;
         var_399 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_387;
      }
      
      public function get page() : ICatalogPage
      {
         return var_399;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1679 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_386;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_783;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1136 = "";
         var_784 = 0;
         var_783 = 0;
         var_399 = null;
         if(var_386 != null)
         {
            var_386.dispose();
            var_386 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1679;
      }
      
      public function get priceInCredits() : int
      {
         return var_784;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_387 = const_361;
            }
            else
            {
               var_387 = const_411;
            }
         }
         else if(param1.length > 1)
         {
            var_387 = const_474;
         }
         else
         {
            var_387 = const_1173;
         }
      }
      
      public function get priceType() : String
      {
         return var_557;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_387)
         {
            case const_361:
               var_386 = new SingleProductContainer(this,param1);
               break;
            case const_411:
               var_386 = new MultiProductContainer(this,param1);
               break;
            case const_474:
               var_386 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_387);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1136;
      }
      
      private function analyzePriceType() : void
      {
         if(var_784 > 0 && var_783 > 0)
         {
            var_557 = const_478;
         }
         else if(var_784 > 0)
         {
            var_557 = const_305;
         }
         else if(var_783 > 0)
         {
            var_557 = const_451;
         }
         else
         {
            var_557 = const_809;
         }
      }
   }
}
