package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_588:int = 6;
      
      public static const const_226:int = 5;
      
      public static const const_551:int = 2;
      
      public static const const_337:int = 9;
      
      public static const const_342:int = 4;
      
      public static const const_257:int = 2;
      
      public static const const_523:int = 4;
      
      public static const const_219:int = 8;
      
      public static const const_704:int = 7;
      
      public static const const_247:int = 3;
      
      public static const const_284:int = 1;
      
      public static const const_198:int = 5;
      
      public static const const_377:int = 12;
      
      public static const const_303:int = 1;
      
      public static const const_544:int = 11;
      
      public static const const_616:int = 3;
      
      public static const const_1441:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_407:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_407 = new Array();
         var_407.push(new Tab(_navigator,const_284,const_377,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_407.push(new Tab(_navigator,const_257,const_303,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_407.push(new Tab(_navigator,const_342,const_544,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_813));
         var_407.push(new Tab(_navigator,const_247,const_226,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_407.push(new Tab(_navigator,const_198,const_219,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_542));
         setSelectedTab(const_284);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_407)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_407)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_407)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_342;
      }
      
      public function get tabs() : Array
      {
         return var_407;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
