class FormattedTitle {
  final String text;
  final String align;
  final List<FormattedTextEntity> entities;

  FormattedTitle({
    required this.text,
    required this.align,
    required this.entities,
  });

  factory FormattedTitle.fromJson(Map<String, dynamic> json) {
    return FormattedTitle(
      text: json['text'],
      align: json['align'],
      entities: (json['entities'] as List)
          .map((entity) => FormattedTextEntity.fromJson(entity))
          .toList(),
    );
  }
}

class FormattedTextEntity {
  final String text;
  final String type;
  final String color;
  final int fontSize;
  final String fontStyle;
  final String fontFamily;

  FormattedTextEntity({
    required this.text,
    required this.type,
    required this.color,
    required this.fontSize,
    required this.fontStyle,
    required this.fontFamily,
  });

  factory FormattedTextEntity.fromJson(Map<String, dynamic> json) {
    return FormattedTextEntity(
      text: json['text'],
      type: json['type'],
      color: json['color'],
      fontSize: json['font_size'],
      fontStyle: json['font_style'],
      fontFamily: json['font_family'],
    );
  }
}