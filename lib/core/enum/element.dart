import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'element_header.dart';

@JsonEnum()
enum Elements {
//enum BarElements {
  Navigationbar,
  Tabbar,
  Sliderbar,
  NavigationDrawer,
  Searchbar,
  Toolbar,
  TabAndSegmentedControl,
//}

//enum OverlayElements {
  Menu,
  Dialog,
  Tooltip,
  Snackbar,
  Toast,
  ActionSheet,
  BottomSheet,
  BottomSheetTall,
  SideSheet,
  FullScreenOverlay,
//}

//enum ControlElements {
  Button,
  FloatingActionButton,
  CheckBox,
  RadioButton,
  Switch,
  Toggle,
  Slider,
  PageControl,
  Stepper,
  MultiSelect,
  SingleSelect,
  DatePicker,
  ColorPicker,
  ProgressIndicator,
  LoadingIndicator,
  TextField,
//}

//enum ViewElements {
  Badge,
  TagAndChip,
  MapPin,
  Table,
  Divider,
  List,
  Card,
  ImageListAndGallery,
  AccordionAndCollapse,
  Banner,
  Carousel,
  Sekleton,
//}

//enum ImageElements {
  HeroImage,
  Thumbnail,
  Avatar,
  Icon,
  Illustration,
  Photo,
  AnimationAndVideo,
  Logo
}

extension ElementsInfo on Elements {
  ElementHeader get header {
    switch (this) {
      case Elements.Navigationbar:

      case Elements.Tabbar:

      case Elements.Sliderbar:

      case Elements.NavigationDrawer:

      case Elements.Searchbar:

      case Elements.Toolbar:

      case Elements.TabAndSegmentedControl:
        return ElementHeader.BarElements;

      case Elements.Menu:

      case Elements.Dialog:

      case Elements.Tooltip:

      case Elements.Snackbar:

      case Elements.Toast:

      case Elements.ActionSheet:

      case Elements.BottomSheet:

      case Elements.BottomSheetTall:

      case Elements.SideSheet:

      case Elements.FullScreenOverlay:
        return ElementHeader.OverlayElements;

      case Elements.Button:

      case Elements.FloatingActionButton:

      case Elements.CheckBox:

      case Elements.RadioButton:

      case Elements.Switch:

      case Elements.Toggle:

      case Elements.Slider:

      case Elements.PageControl:

      case Elements.Stepper:

      case Elements.MultiSelect:

      case Elements.SingleSelect:

      case Elements.DatePicker:

      case Elements.ColorPicker:

      case Elements.ProgressIndicator:

      case Elements.LoadingIndicator:

      case Elements.TextField:
        return ElementHeader.ControlElements;

      case Elements.Badge:

      case Elements.TagAndChip:

      case Elements.MapPin:

      case Elements.Table:

      case Elements.Divider:

      case Elements.List:

      case Elements.Card:

      case Elements.ImageListAndGallery:

      case Elements.AccordionAndCollapse:

      case Elements.Banner:

      case Elements.Carousel:

      case Elements.Sekleton:
        return ElementHeader.ViewElements;

      case Elements.HeroImage:

      case Elements.Thumbnail:

      case Elements.Avatar:

      case Elements.Icon:

      case Elements.Illustration:

      case Elements.Photo:

      case Elements.AnimationAndVideo:

      case Elements.Logo:
        return ElementHeader.ImageElements;
    }
  }
}
