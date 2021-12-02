import 'package:neon_web/core/domain/entities/asset_entity.dart';

enum BarElements {
  Navigationbar,
  Tabbar,
  Sliderbar,
  NavigationDrawer,
  Searchbar,
  Toolbar,
  TabAndSegmentedControl
}

enum OverlayElements {
  Menu,
  Dialog,
  Tooltip,
  Snackbar,
  Toast,
  ActionSheet,
  BottomSheet,
  BottomSheetTall,
  SideSheet,
  FullScreenOverlay
}

enum ControlElements {
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
  TextField
}

enum ViewElements {
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
  Sekleton
}

enum ImageElements {
  HeroImage,
  Thumbnail,
  Avatar,
  Icon,
  Illustration,
  Photo,
  AnimationAndVideo,
  Logo
}

enum Patterns { SocialFeed }

class ProjectEntity {
  final String title;
  final List<Patterns> patterns;
  final List<BarElements> barElements;
  final List<OverlayElements> overlayElements;
  final List<ControlElements> controlElements;
  final List<ViewElements> viewElements;
  final List<ImageElements> imageElements;
  final List<AssetEntity> assets;

  ProjectEntity(
      {required this.title,
      required this.patterns,
      required this.barElements,
      required this.overlayElements,
      required this.controlElements,
      required this.viewElements,
      required this.imageElements,
      required this.assets});
}
