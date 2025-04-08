import 'package:flutter/material.dart';
import '../models/item_models.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback onTap;

  const ItemCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.imageUrl),
      title: Text(item.title),
      subtitle: Text(item.location),
      onTap: onTap,
    );
  }
}
