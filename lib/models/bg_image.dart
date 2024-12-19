class BgImage {
  final String imageType;
  final String imageUrl;
  final double? aspectRatio;

  BgImage({
    required this.imageType,
    required this.imageUrl,
    this.aspectRatio,
  });

  factory BgImage.fromJson(Map<String, dynamic> json) {
    return BgImage(
      imageType: json['image_type'] as String,
      imageUrl: json['image_url'] as String,
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
    );
  }
}
