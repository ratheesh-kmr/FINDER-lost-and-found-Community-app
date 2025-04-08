class Item {
  final String id;
  final String title;
  final String description;
  final String type; // "lost" or "found"
  final String location;
  final String imageUrl;
  final DateTime datePosted;
  final String userId; // Owner of post

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.location,
    required this.imageUrl,
    required this.datePosted,
    required this.userId,
  });

  // Convert JSON to Item
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      type: json['type'] ?? '',
      location: json['location'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      datePosted: DateTime.parse(json['datePosted']),
      userId: json['userId'] ?? '',
    );
  }

  // Convert Item to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type,
      'location': location,
      'imageUrl': imageUrl,
      'datePosted': datePosted.toIso8601String(),
      'userId': userId,
    };
  }
}
