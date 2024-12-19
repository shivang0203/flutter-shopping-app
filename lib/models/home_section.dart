import 'package:fampay_assignment/models/hc_group.dart';

class HomeSection {
  final int id;
  final String slug;
  final String? title;
  final String? formattedTitle;
  final String? description;
  final String? formattedDescription;
  final List<dynamic>? assets;
  final List<HCGroup> hcGroups;

  HomeSection({
    required this.id,
    required this.slug,
    this.title,
    this.formattedTitle,
    this.description,
    this.formattedDescription,
    this.assets,
    required this.hcGroups,
  });

  factory HomeSection.fromJson(Map<String, dynamic> json) {
    return HomeSection(
      id: json['id'] as int,
      slug: json['slug'] as String,
      title: json['title'] as String?,
      formattedTitle: json['formatted_title'] as String?,
      description: json['description'] as String?,
      formattedDescription: json['formatted_description'] as String?,
      assets: json['assets'] as List<dynamic>?,
      hcGroups: (json['hc_groups'] as List<dynamic>?)
              ?.map((group) => HCGroup.fromJson(group))
              .toList() ??
          [],
    );
  }
}





class FormattedTitle {
  final String text;
  final String align;
  final List<dynamic>? entities;

  FormattedTitle({
    required this.text,
    required this.align,
    this.entities,
  });

  factory FormattedTitle.fromJson(Map<String, dynamic> json) {
    return FormattedTitle(
      text: json['text'] as String,
      align: json['align'] as String,
      entities: json['entities'] as List<dynamic>?,
    );
  }
}

