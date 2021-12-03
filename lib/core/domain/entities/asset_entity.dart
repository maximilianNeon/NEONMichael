import 'package:flutter/material.dart';
import 'package:neon_web/core/domain/entities/elemen_lists.dart';
import 'package:neon_web/core/domain/entities/pattern_lists.dart';

class AssetEntity {
  final String imageUrl;
  final String title;
  final int id;
  final List<PatternLists> patterns;
  final List<ElementLists> elements;

  AssetEntity(
      {required this.imageUrl,
      required this.title,
      required this.id,
      required this.elements,
      required this.patterns});
}
