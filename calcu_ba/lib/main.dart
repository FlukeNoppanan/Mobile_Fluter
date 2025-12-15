import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String num1 = '';
  String num2 = '';
  String operater = '';
  String display = '0';
//button widget
  Widget buildButton(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontSize: 24)),
      ),
    );
  }
//number function
  void onPreNumbers(String value) {
    setState(() {
      if (operater.isEmpty) {
        if (num1 == '' && value == '0') {
          display = "0";
        } else {
          num1 += value;
          display = num1;
        }
      } else {
        if (num2 == '0' && value == '0') {
          display = "0";
        } else {
          num2 += value;
          display = num2;
        }
      }
    });
  }
//operator function
  void operaters(String values) {
    setState(() {
      operater = values;
    });
  }
//clear function
  void clear() {
    setState(() {
      num1 = '';
      num2 = '';
      operater = '';
      display = '0';
    });
  }

  void cal() {
    setState(() {
      double number1 = double.parse(num1);
      double number2 = double.parse(num2);
      double result = 0;

      switch (operater) {
        case '+':
          result = number1 + number2;
          break;
        case '-':
          result = number1 - number2;
          break;
        case '*':
          result = number1 * number2;
          break;
        case '/':
          if (number2 == 0) {
            display = '0';
            return;
          } else{
            result = number1 / number2;
          }
          break;
      }

      display = result.toString();
      num1 = display;
      num2 = '';
      operater = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(display, style: const TextStyle(fontSize: 48))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('7', () => onPreNumbers('7')),
              buildButton('8', () => onPreNumbers('8')),
              buildButton('9', () => onPreNumbers('9')),
              buildButton('/', () => operaters('/')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('4', () => onPreNumbers('4')),
              buildButton('5', () => onPreNumbers('5')),
              buildButton('6', () => onPreNumbers('6')),
              buildButton('*', () => operaters('*')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('1', () => onPreNumbers('1')),
              buildButton('2', () => onPreNumbers('2')),
              buildButton('3', () => onPreNumbers('3')),
              buildButton('-', () => operaters('-')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('0', () => onPreNumbers('0')),
              buildButton('C', () => clear()),
              buildButton('=', () => cal()),
              buildButton('+', () => operaters('+')),
            ],
          ),
        ],
      ),
    );
  }
}
