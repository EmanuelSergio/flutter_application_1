class Food {
  final int id;
  final String name;
  final double rating;
  final String description;
  final double value;
  final String imageUrl;

  Food({
    required this.id,
    required this.name,
    required this.rating,
    required this.description,
    required this.value,
    required this.imageUrl,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'] as int,
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String,
      value: (json['value'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'rating': rating,
      'description': description,
      'value': value,
      'imageUrl': imageUrl,
    };
  }
}
