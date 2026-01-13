import 'package:flutter/material.dart';
import 'shopping.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _productName = TextEditingController();
  final _customerName = TextEditingController();

  void initState() {
    super.initState();
    _productName.addListener(_updateText);
    _customerName.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _productName.text;
      _customerName.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Form Example'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Input Form Placeholder'),
            SizedBox(height: 16.0),
            TextField(
              controller: _productName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Product Name',
                icon: Icon(Icons.verified_user),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _customerName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Customer Name',
                icon: Icon(Icons.verified_user),
              ),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShoppingPage(
                        productName: _productName.text,
                        customerName: _customerName.text,
                      );
                    },
                  ),
                );
              },
              style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
              child: const Text('Submit'),
            ),
            Text('Product Name: ${_productName.text}'),
            Text('Customer Name: ${_customerName.text}'),
          ],
        ),
      ),
    );
  }
}
