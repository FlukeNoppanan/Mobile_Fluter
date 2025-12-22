import 'package:flutter/material.dart';
import 'foolMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
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

  List<Foolmenu> menus = [
    Foolmenu("กุ้งเผา", "900"),
    Foolmenu("ปลาหมึกย่าง", "500"),
    Foolmenu("กระเพรา", "200"),
    Foolmenu("สามชั้นทอด", "200"),
    Foolmenu("ไข่เจียว", "2000"),
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (BuildContext context, int index) {
          Foolmenu food = menus[index];
          return ListTile(
            title: Text("Menu ${index + 1}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
            subtitle: Text("${food.foolname} ราคา ${food.foolprice} บาท", style: TextStyle(fontSize: 18, color: Colors.black54)),
          );
        },
        ),
      );

  }
}
