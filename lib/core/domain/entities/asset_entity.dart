import 'package:flutter/material.dart';

class AssetEntity {
  final String imageUrl;
  final String title;
  final int id;
  final List<Pattern> patterns;
  final List<Element> elements;

  AssetEntity(
      {required this.imageUrl,
      required this.title,
      required this.id,
      required this.elements,
      required this.patterns});
}
