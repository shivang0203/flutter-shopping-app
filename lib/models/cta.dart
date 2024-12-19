class Cta {
  final String text;
  final String type;
  final String bgColor;
  final bool isCircular;
  final bool isSecondary;
  final int strokeWidth;

  Cta({
    required this.text,
    required this.type,
    required this.bgColor,
    required this.isCircular,
    required this.isSecondary,
    required this.strokeWidth,
  });

  factory Cta.fromJson(Map<String, dynamic> json) {
    return Cta(
      text: json['text'],
      type: json['type'],
      bgColor: json['bg_color'],
      isCircular: json['is_circular'],
      isSecondary: json['is_secondary'],
      strokeWidth: json['stroke_width'],
    );
  }
}