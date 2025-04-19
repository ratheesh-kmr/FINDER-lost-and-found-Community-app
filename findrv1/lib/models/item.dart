// lib/models/item_model.dart

class FinderItem {
  final String id;
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final String type; // "lost" or "found"
  final String imageUrl; // Optional: Firebase Storage URL

  FinderItem({
    required this.id,
    required this.title,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.type,
    required this.imageUrl,
  });

  // Optional: Convert to/from Map for Firebase
  factory FinderItem.fromMap(Map<String, dynamic> data, String docId) {
    return FinderItem(
      id: docId,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      latitude: data['latitude'] ?? 0.0,
      longitude: data['longitude'] ?? 0.0,
      type: data['type'] ?? 'lost',
      imageUrl: data['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
      'type': type,
      'imageUrl': imageUrl,
    };
  }
}
