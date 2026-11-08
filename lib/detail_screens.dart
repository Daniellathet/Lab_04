import 'package:flutter/material.dart';

class VegetableScreen extends StatelessWidget {
  const VegetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DetailPage(
      name: 'Vegetable Pizza',
      imagePath: 'assets/images/veg_pizza.jpg',
      description:
          'A hand-stretched base topped with tomato sauce, capsicum, '
          'mushrooms, onions and olives.',
    );
  }
}

class CheeseScreen extends StatelessWidget {
  const CheeseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DetailPage(
      name: 'Cheese Pizza',
      imagePath: 'assets/images/cheese_pizza.jpg',
      description:
          'A classic pizza with a rich tomato base and plenty of melted '
          'mozzarella.',
    );
  }
}

class FriesScreen extends StatelessWidget {
  const FriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DetailPage(
      name: 'Box of Fries',
      imagePath: 'assets/images/fries.jpg',
      description: 'Golden, crispy fries served hot with a pinch of salt.',
    );
  }
}

class _DetailPage extends StatelessWidget {
  const _DetailPage({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  final String name;
  final String imagePath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
