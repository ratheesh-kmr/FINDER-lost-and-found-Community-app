// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../components/item_card.dart';
import '../models/item_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FinderItem> items = [
      FinderItem(
        id: '1',
        title: "Lost Wallet",
        description: "Black leather wallet near library",
        latitude: 11.0168,
        longitude: 76.9558,
        type: "lost",
        imageUrl: "",
      ),
      FinderItem(
        id: '2',
        title: "Found Phone",
        description: "iPhone found in cafeteria",
        latitude: 11.0171,
        longitude: 76.9602,
        type: "found",
        imageUrl: "",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('FINDER'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(item: items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
