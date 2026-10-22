//Lee Xing Ying_104731
import 'package:flutter/material.dart';

class Lab03 extends StatelessWidget {
  const Lab03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFF8F5),
        appBar: AppBar(
          backgroundColor: Colors.pink.shade300,
          title: const Text(
            'Flower Shop Menu',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(Icons.local_florist, color: Colors.white),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.pink.shade50,
              child: const Column(
                children: [
                  Icon(Icons.spa, size: 40, color: Colors.pink),
                  SizedBox(height: 8),
                  Text(
                    'Fresh Flowers for Every Moment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Choose your favourite flowers',
                    style: TextStyle(fontSize: 14, color: Colors.brown),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  flowerCard(
                    name: 'Rose Bouquet',
                    description: 'Beautiful pink roses',
                    price: 'RM 59.00',
                    color: Colors.red.shade300,
                    imagePath: 'assets/images/rose.png',
                  ),
                  flowerCard(
                    name: 'Sunflower Bouquet',
                    description: 'Bright and cheerful sunflowers',
                    price: 'RM 45.00',
                    color: Colors.orange.shade300,
                    imagePath: 'assets/images/sunflower.png',
                  ),
                  flowerCard(
                    name: 'Lily Bouquet',
                    description: 'Fresh and lovely lilies',
                    price: 'RM 55.00',
                    color: Colors.pink.shade300,
                    imagePath: 'assets/images/lily.jpeg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget flowerCard({
    required String name,
    required String description,
    required String price,
    required Color color,
    required String imagePath,
  }) {
    return Card(
      color: Colors.white,
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: 65,
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink.shade400,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.shopping_bag_outlined, color: Colors.pink.shade300),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const Lab03());
}
