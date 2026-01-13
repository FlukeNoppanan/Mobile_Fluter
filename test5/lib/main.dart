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

class NewInput extends StatelessWidget {
  const NewInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'ชื่อเจ้าของบัญชี',
        hintText: 'กรุณากรอกชื่อเจ้าของบัญชี',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกชื่อเจ้าของบัญชี';
        }
        return null;
      },
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: EdgeInsets.all(20),
                child: NewInput(),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 210, 234),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 100,
              ),
              SizedBox(height: 10),
              MoneyBox(
                title: 'ยอดเงินคงเหลือ',
                amount: 30000000.133353,
                sizeConHeight: 100,
                colors: const Color.fromARGB(255, 24, 235, 31),
                borderradius: 30,
              ),
              // SizedBox(height: 10),
              MoneyBox(
                title: 'รายจ่ายทั้งหมด',
                amount: 5000000.7645,
                sizeConHeight: 100,
                colors: const Color.fromARGB(255, 248, 28, 12),
                borderradius: 30,
              ),
              // SizedBox(height: 10),
              MoneyBox(
                title: 'รายได้ทั้งหมด',
                amount: 25000000.8734,
                sizeConHeight: 100,
                colors: const Color.fromARGB(255, 12, 28, 248),
                borderradius: 30,
              ),
              MoneyBox(
                title: 'เงินออมทั้งหมด',
                amount: 10000000.9823,
                sizeConHeight: 100,
                colors: const Color.fromARGB(255, 248, 216, 12),
                borderradius: 30,
              ),
              SizedBox(height: 10),
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 140, 43, 189),
                    minimumSize: Size(200, 60),
                  ),
                  onPressed: () {},
                  child: Text(
                    'เพิ่มข้อมูล',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
