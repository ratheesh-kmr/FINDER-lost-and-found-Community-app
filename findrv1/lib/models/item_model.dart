// lib/models/item_model.dart

class FinderItem {
  final String id;
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final String type; // lost or found
  final String imageUrl;

  FinderItem({
    required this.id,
    required this.title,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.type,
    required this.imageUrl,
  });
}
