import 'package:flutter/material.dart';
import 'moneyBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox(
                title: 'Income',
                amount: 30000000,
                sizeConHeight: 150,
                colors: const Color.fromARGB(255, 24, 235, 31),
                borderradius: 30,
              ),
              // SizedBox(height: 10),
              MoneyBox(
                title: 'Outcome',
                amount: 5000000,
                sizeConHeight: 150,
                colors: const Color.fromARGB(255, 248, 28, 12),
                borderradius: 30,
              ),
              // SizedBox(height: 10),
              MoneyBox(
                title: 'Balance',
                amount: 25000000,
                sizeConHeight: 150,
                colors: const Color.fromARGB(255, 12, 28, 248),
                borderradius: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
