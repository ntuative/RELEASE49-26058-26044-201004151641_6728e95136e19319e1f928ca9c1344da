package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_824:int;
      
      private var _right:int;
      
      private var var_822:int;
      
      private var var_823:int;
      
      private var var_180:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_822 = param1;
         var_823 = param2;
         _right = param3;
         var_824 = param4;
         var_180 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_824 = param1;
         var_180(this);
      }
      
      public function get left() : int
      {
         return var_822;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_822 == 0 && _right == 0 && var_823 == 0 && var_824 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_823 = param1;
         var_180(this);
      }
      
      public function get top() : int
      {
         return var_823;
      }
      
      public function set left(param1:int) : void
      {
         var_822 = param1;
         var_180(this);
      }
      
      public function get bottom() : int
      {
         return var_824;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_822,var_823,_right,var_824,param1);
      }
      
      public function dispose() : void
      {
         var_180 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_180(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
