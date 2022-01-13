import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/enum/enums.dart';

part 'element_entity.g.dart';
part 'element_entity.freezed.dart';

@freezed
@injectable
class ElementEntity with _$ElementEntity {
  factory ElementEntity({
     required String header,
    required Elements item,
  }) = _ElementEntity;

  

   factory ElementEntity.fromJson(Map<String, dynamic> json) => _$ElementEntityFromJson(json);

 // static ElementEntity fromJson(Map<String, dynamic> elementEntityMap) {
 //   return ElementEntity(
 //       header: elementEntityMap["header"], item: elementEntityMap["item"]);
 // }
}

// class Overlay extends ElementEntity {
//  Overlay({required final String header})
//      : super(header: header, item: OverlayElements);
// }

// class Control extends ElementEntity {
//  Control({required final String header})
//      : super(header: header, item: ControlElements);
// }

// class View extends ElementEntity {
//  View({required final String header})
//      : super(header: header, item: ViewElements);
// }

// class ImageElement extends ElementEntity {
//  ImageElement({required final String header})
//      : super(header: header, item: ImageElements);
// }
