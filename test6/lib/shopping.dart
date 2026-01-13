import 'package:flutter/material.dart';
// import 'inputFrom.dart';

class ShoppingPage extends StatelessWidget {
  // const ShoppingPage({super.key});
  const ShoppingPage({
    super.key,
    required this.productName,
    required this.customerName,
  });
  final String productName;
  final String customerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Page'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Product Name: $productName'),
                subtitle: Text('Customer Name: $customerName'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
