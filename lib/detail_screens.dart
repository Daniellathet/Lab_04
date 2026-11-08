import 'package:flutter/material.dart';

import 'order_summary.dart';

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
      unitPrice: 12.90, // placeholder: use your assignment's price
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
      unitPrice: 11.90, // placeholder
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
      unitPrice: 5.50, // placeholder
    );
  }
}

class _DetailPage extends StatefulWidget {
  const _DetailPage({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.unitPrice,
  });

  final String name;
  final String imagePath;
  final String description;
  final double unitPrice;

  @override
  State<_DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<_DetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
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
                widget.imagePath,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(widget.description, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Text(
              'RM ${widget.unitPrice.toStringAsFixed(2)} each',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: quantity > 1
                      ? () => setState(() => quantity--)
                      : null,
                ),
                Text('$quantity', style: const TextStyle(fontSize: 20)),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () => setState(() => quantity++),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderSummaryScreen(
                        itemName: widget.name,
                        quantity: quantity,
                        unitPrice: widget.unitPrice,
                      ),
                    ),
                  );
                },
                child: const Text('Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
