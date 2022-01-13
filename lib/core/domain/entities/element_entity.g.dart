// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElementEntity _$$_ElementEntityFromJson(Map<String, dynamic> json) =>
    _$_ElementEntity(
      header: json['header'] as String,
      item: $enumDecode(_$ElementsEnumMap, json['item']),
    );

Map<String, dynamic> _$$_ElementEntityToJson(_$_ElementEntity instance) =>
    <String, dynamic>{
      'header': instance.header,
      'item': _$ElementsEnumMap[instance.item],
    };

const _$ElementsEnumMap = {
  Elements.Navigationbar: 'Navigationbar',
  Elements.Tabbar: 'Tabbar',
  Elements.Sliderbar: 'Sliderbar',
  Elements.NavigationDrawer: 'NavigationDrawer',
  Elements.Searchbar: 'Searchbar',
  Elements.Toolbar: 'Toolbar',
  Elements.TabAndSegmentedControl: 'TabAndSegmentedControl',
  Elements.Menu: 'Menu',
  Elements.Dialog: 'Dialog',
  Elements.Tooltip: 'Tooltip',
  Elements.Snackbar: 'Snackbar',
  Elements.Toast: 'Toast',
  Elements.ActionSheet: 'ActionSheet',
  Elements.BottomSheet: 'BottomSheet',
  Elements.BottomSheetTall: 'BottomSheetTall',
  Elements.SideSheet: 'SideSheet',
  Elements.FullScreenOverlay: 'FullScreenOverlay',
  Elements.Button: 'Button',
  Elements.FloatingActionButton: 'FloatingActionButton',
  Elements.CheckBox: 'CheckBox',
  Elements.RadioButton: 'RadioButton',
  Elements.Switch: 'Switch',
  Elements.Toggle: 'Toggle',
  Elements.Slider: 'Slider',
  Elements.PageControl: 'PageControl',
  Elements.Stepper: 'Stepper',
  Elements.MultiSelect: 'MultiSelect',
  Elements.SingleSelect: 'SingleSelect',
  Elements.DatePicker: 'DatePicker',
  Elements.ColorPicker: 'ColorPicker',
  Elements.ProgressIndicator: 'ProgressIndicator',
  Elements.LoadingIndicator: 'LoadingIndicator',
  Elements.TextField: 'TextField',
  Elements.Badge: 'Badge',
  Elements.TagAndChip: 'TagAndChip',
  Elements.MapPin: 'MapPin',
  Elements.Table: 'Table',
  Elements.Divider: 'Divider',
  Elements.List: 'List',
  Elements.Card: 'Card',
  Elements.ImageListAndGallery: 'ImageListAndGallery',
  Elements.AccordionAndCollapse: 'AccordionAndCollapse',
  Elements.Banner: 'Banner',
  Elements.Carousel: 'Carousel',
  Elements.Sekleton: 'Sekleton',
  Elements.HeroImage: 'HeroImage',
  Elements.Thumbnail: 'Thumbnail',
  Elements.Avatar: 'Avatar',
  Elements.Icon: 'Icon',
  Elements.Illustration: 'Illustration',
  Elements.Photo: 'Photo',
  Elements.AnimationAndVideo: 'AnimationAndVideo',
  Elements.Logo: 'Logo',
};
