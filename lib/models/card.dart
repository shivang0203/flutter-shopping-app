import 'package:fampay_assignment/models/bg_image.dart';
import 'package:fampay_assignment/models/cta.dart';
import 'package:fampay_assignment/models/formatted_text.dart';

class CardItem {
  final int id;
  final String name;
  final String slug;
  final String? title;
  final FormattedTitle? formattedTitle;
  final String? url;
  final BgImage? bgImage;
  final List<dynamic>? cta;

  CardItem({
    required this.id,
    required this.name,
    required this.slug,
    this.title,
    this.formattedTitle,
    this.url,
    this.bgImage,
    this.cta,
  });

  factory CardItem.fromJson(Map<String, dynamic> json) {
    return CardItem(
      id: json['id'] as int,
      name: json['name'] as String,
      slug: json['slug'] as String,
      title: json['title'] as String?,
      formattedTitle: json['formatted_title'] != null
          ? FormattedTitle.fromJson(json['formatted_title'])
          : null,
      url: json['url'] as String?,
      bgImage: json['bg_image'] != null
          ? BgImage.fromJson(json['bg_image'])
          : null,
      cta: json['cta'] as List<dynamic>?,
    );
  }
}