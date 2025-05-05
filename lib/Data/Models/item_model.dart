class Food {
  final String id;
  final String name;
  final double rating;
  final String description;
  final double value;
  final String imageUrl;
  final int categoryId;
  final int ordersCount;
  final String details;

  Food({
    required this.id,
    required this.name,
    required this.rating,
    required this.description,
    required this.value,
    required this.imageUrl,
    this.categoryId = 0,
    required this.ordersCount,
    required this.details,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      id: json['id'] as String,
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String,
      value: (json['value'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      categoryId: json['categoryId'] as int? ?? 0,
      ordersCount: json['ordersCount'] as int,
      details: json['details'] as String? ?? '', // Added details field
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
      'categoryId': categoryId,
      'ordersCount': ordersCount,
      'details': details, // Added details field
    };
  }
}
