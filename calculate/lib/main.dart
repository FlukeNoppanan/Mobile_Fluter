import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      brightness: Brightness.light,
      ),
      home: const MyHomePage(title: 'Calculator By FlukeNoppanan'),
    );
  }
}

//home page widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Button Widget
  Widget calcButton(String label, {Color? b, Color? f, VoidCallback? onPressed}) {
    final background = b ?? Colors.white;
    final foreground = f ?? Colors.black;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(85, 85),
        backgroundColor: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 2,
      ),
      onPressed: onPressed ?? () {},
      child: Text(label, style: TextStyle(fontSize: 26, color: foreground, fontWeight: FontWeight.w600)),
    );
  }

  @override
  // Build Method
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 49, 124),
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 255, 255, 255), Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Display
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                child: const Text('0', textAlign: TextAlign.right, style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600)),
              ),
            ),

            // Keypad
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Card(
                elevation: 2,
                // color: const Color.fromARGB(179, 115, 138, 238),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          calcButton('%', b: Colors.grey[200]),
                          calcButton('C', b: Colors.grey[200]),
                          calcButton( '⌫',b: Colors.orange[300], f: Colors.white),
                          calcButton('÷', b: Colors.orange[300], f: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          calcButton('7'),
                          calcButton('8'),
                          calcButton('9'),
                          calcButton('×', b: Colors.orange[300], f: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          calcButton('4'),
                          calcButton('5'),
                          calcButton('6'),
                          calcButton('+', b: Colors.orange[300], f: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          calcButton('1'),
                          calcButton('2'),
                          calcButton('3'),
                          calcButton('-', b: Colors.orange[300], f: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          calcButton('+/-', b: Colors.grey[200]),
                          calcButton('0'),
                          calcButton('.', b: Colors.grey[200]),
                          calcButton('=', b: Colors.indigo, f: Colors.white),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
