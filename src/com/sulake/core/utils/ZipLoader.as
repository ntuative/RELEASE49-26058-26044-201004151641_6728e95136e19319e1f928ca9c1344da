package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_437:FZip;
      
      private var var_1307:Array;
      
      private var var_1073:uint = 0;
      
      private var var_2126:uint = 0;
      
      private var var_2393:Array;
      
      private var var_891:int = 0;
      
      private var var_1074:uint = 0;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1307 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0,var_1074,var_1073));
      }
      
      public function get resources() : Array
      {
         return var_1307;
      }
      
      private function onComplete(param1:Event) : void
      {
         var_891 = 0;
         var_2126 = var_437.getFileCount();
         removeEventListeners();
         if(var_14)
         {
            var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
            var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_14.loadBytes(var_437.getFileAt(var_891).content);
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_14.content);
         var_1307.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_891;
         if(var_1307.length == var_2126)
         {
            var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1074,var_1073));
         }
         else
         {
            var_14.loadBytes(var_437.getFileAt(var_891).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_323 = param1;
         if(var_437)
         {
            var_437.close();
         }
         var_437 = new FZip();
         var_437.addEventListener(Event.COMPLETE,onComplete);
         var_437.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_437.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_437.load(var_323);
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1073;
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1074;
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1074 = param1.bytesTotal;
         var_1073 = param1.bytesLoaded;
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1074,var_1073));
      }
   }
}
