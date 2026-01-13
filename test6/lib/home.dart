import 'package:flutter/material.dart';
// import 'dart:math' as math;
import 'shopping.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // final math.Random random = math.Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Item Added'),
                        content: const Text(
                          'The item has been added to your cart.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const ShoppingPage();
                                  },
                                ),
                              );
                            },
                            child: const Text('OK'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shadowColor: Colors.grey,
                      side: BorderSide(
                        color: const Color.fromARGB(255, 29, 94, 27),
                        width: 2,
                      ),
                      shape: StadiumBorder(),
                      fixedSize: const Size(200, 60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Add to Cart'),
                        const SizedBox(width: 10),
                        Icon(Icons.add_shopping_cart, size: 32),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(200, 50),
                    ),
                    onPressed: () {},
                    child: const Text('Button 2'),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    style: TextButton.styleFrom(fixedSize: const Size(200, 50)),
                    onPressed: () {},
                    child: const Text('Button 3'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
