package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_528;
         param1["bitmap"] = const_700;
         param1["border"] = const_511;
         param1["border_notify"] = const_1191;
         param1["button"] = const_369;
         param1["button_thick"] = const_709;
         param1["button_icon"] = const_1325;
         param1["button_group_left"] = const_673;
         param1["button_group_center"] = const_710;
         param1["button_group_right"] = const_639;
         param1["canvas"] = const_610;
         param1["checkbox"] = const_539;
         param1["closebutton"] = const_895;
         param1["container"] = const_316;
         param1["container_button"] = const_724;
         param1["display_object_wrapper"] = const_584;
         param1["dropmenu"] = const_461;
         param1["dropmenu_item"] = const_389;
         param1["frame"] = const_324;
         param1["frame_notify"] = const_1334;
         param1["header"] = const_741;
         param1["icon"] = const_1010;
         param1["itemgrid"] = const_894;
         param1["itemgrid_horizontal"] = const_426;
         param1["itemgrid_vertical"] = const_638;
         param1["itemlist"] = const_992;
         param1["itemlist_horizontal"] = const_294;
         param1["itemlist_vertical"] = const_320;
         param1["maximizebox"] = const_1138;
         param1["menu"] = const_1317;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_855;
         param1["minimizebox"] = const_1197;
         param1["notify"] = const_1284;
         param1["null"] = const_562;
         param1["password"] = const_565;
         param1["radiobutton"] = const_615;
         param1["region"] = const_406;
         param1["restorebox"] = const_1361;
         param1["scaler"] = const_649;
         param1["scaler_horizontal"] = const_1144;
         param1["scaler_vertical"] = const_1260;
         param1["scrollbar_horizontal"] = const_458;
         param1["scrollbar_vertical"] = const_640;
         param1["scrollbar_slider_button_up"] = const_846;
         param1["scrollbar_slider_button_down"] = const_995;
         param1["scrollbar_slider_button_left"] = const_950;
         param1["scrollbar_slider_button_right"] = const_1003;
         param1["scrollbar_slider_bar_horizontal"] = const_924;
         param1["scrollbar_slider_bar_vertical"] = const_1012;
         param1["scrollbar_slider_track_horizontal"] = const_1020;
         param1["scrollbar_slider_track_vertical"] = const_978;
         param1["scrollable_itemlist"] = const_1394;
         param1["scrollable_itemlist_vertical"] = const_480;
         param1["scrollable_itemlist_horizontal"] = const_917;
         param1["selector"] = const_574;
         param1["selector_list"] = const_706;
         param1["submenu"] = const_855;
         param1["tab_button"] = const_569;
         param1["tab_container_button"] = const_970;
         param1["tab_context"] = const_486;
         param1["tab_content"] = const_839;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_571;
         param1["input"] = const_737;
         param1["toolbar"] = const_1183;
         param1["tooltip"] = const_330;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
