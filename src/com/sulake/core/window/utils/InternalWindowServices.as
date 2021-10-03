package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_117:DisplayObject;
      
      private var var_2337:uint;
      
      private var var_901:IWindowToolTipAgentService;
      
      private var var_903:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_904:IWindowFocusManagerService;
      
      private var var_902:IWindowMouseListenerService;
      
      private var var_900:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2337 = 0;
         var_117 = param2;
         _windowContext = param1;
         var_900 = new WindowMouseDragger(param2);
         var_903 = new WindowMouseScaler(param2);
         var_902 = new WindowMouseListener(param2);
         var_904 = new FocusManager(param2);
         var_901 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_903;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_904;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_901;
      }
      
      public function dispose() : void
      {
         if(var_900 != null)
         {
            var_900.dispose();
            var_900 = null;
         }
         if(var_903 != null)
         {
            var_903.dispose();
            var_903 = null;
         }
         if(var_902 != null)
         {
            var_902.dispose();
            var_902 = null;
         }
         if(var_904 != null)
         {
            var_904.dispose();
            var_904 = null;
         }
         if(var_901 != null)
         {
            var_901.dispose();
            var_901 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_902;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_900;
      }
   }
}
