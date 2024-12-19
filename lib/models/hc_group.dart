import 'package:fampay_assignment/models/card.dart';

class HCGroup {
  final int id;
  final String name;
  final String designType;
  final int cardType;
  final List<CardItem> cards;
  final bool isScrollable;
  final int? height;
  final bool isFullWidth;
  final String slug;
  final int level;

  HCGroup({
    required this.id,
    required this.name,
    required this.designType,
    required this.cardType,
    required this.cards,
    required this.isScrollable,
    this.height,
    required this.isFullWidth,
    required this.slug,
    required this.level,
  });

  factory HCGroup.fromJson(Map<String, dynamic> json) {
    return HCGroup(
      id: json['id'] as int,
      name: json['name'] as String,
      designType: json['design_type'] as String,
      cardType: json['card_type'] as int,
      cards: (json['cards'] as List<dynamic>)
          .map((card) => CardItem.fromJson(card))
          .toList(),
      isScrollable: json['is_scrollable'] as bool,
      height: json['height'] as int?,
      isFullWidth: json['is_full_width'] as bool,
      slug: json['slug'] as String,
      level: json['level'] as int,
    );
  }
}