package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1266:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_868:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1266 = param1;
         var_868 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_868;
      }
      
      public function get identifier() : IID
      {
         return var_1266;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1266 = null;
            while(false)
            {
               var_868.pop();
            }
            var_868 = null;
         }
      }
   }
}
