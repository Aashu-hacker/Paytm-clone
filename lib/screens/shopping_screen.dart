import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Add product to cart
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to cart screen
        },
        label: Text('View Cart'),
        icon: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

// Dummy list of products (replace with actual data)
final List<Product> products = [
  Product('Product 1', 10.99),
  Product('Product 2', 20.49),
  Product('Product 3', 15.99),
  // Add more products as needed
];
