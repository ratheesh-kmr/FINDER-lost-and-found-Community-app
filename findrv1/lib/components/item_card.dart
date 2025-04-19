// lib/components/item_card.dart

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/item_model.dart';

class ItemCard extends StatelessWidget {
  final FinderItem item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Text(item.description),
        trailing: IconButton(
          icon: const Icon(Icons.location_on),
          onPressed: () {
            // Navigate to Google Map view
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Location'),
                content: SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(item.latitude, item.longitude),
                      zoom: 14,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId(item.id),
                        position: LatLng(item.latitude, item.longitude),
                        infoWindow: InfoWindow(title: item.title),
                      ),
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
