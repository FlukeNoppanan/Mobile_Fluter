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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'FLUKE FOOD MENU'),
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
  int tep = 0;
  int sum = 0;

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
            leading: Image.asset(
              food.foolimage,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(
              "${food.foolname} ประเภท ${food.fooltype}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 6, 6, 6),
              ),
            ),
            subtitle: Center(
              child: Text(
                "ราคา ${food.foolprice} บาท",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(137, 112, 111, 111),
                ),
              ),
            ),
            onTap: () {
              tep++;
              sum += int.parse(food.foolprice);
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("ปิด"),
                      ),
                    ],
                    title: Text(
                      "เมนูที่เลือกคือ ${food.foolname} ประเภท ${food.fooltype}",
                    ),
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("จำนวน ${tep} จาน \nราคา ${sum}")],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
