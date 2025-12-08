import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Calculator App",
      home: const MyWidget(),
    );
  }
}

// stateful widget
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int number = 0;
  String number1 = "";
  String number2 = "";
  String operation = "";
  String showValues = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Basic Calculator App",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 170, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              showValues.toString(),
              style: TextStyle(fontSize: 30, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "7";
                        showValues = number1;
                      } else {
                        number2 += "7";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("7", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "8";
                        showValues = number1;
                      } else {
                        number2 += "8";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("8", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "9";
                        showValues = number1;
                      } else {
                        number2 += "9";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("9", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operation = "+";
                    });
                  },
                  child: const Text("+", style: TextStyle(fontSize: 30)),
                ),
                // SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "4";
                        showValues = number1;
                      } else {
                        number2 += "4";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("4", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "5";
                        showValues = number1;
                      } else {
                        number2 += "5";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("5", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "6";
                        showValues = number1;
                      } else {
                        number2 += "6";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("6", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operation = "-";
                    });
                  },
                  child: const Text("-", style: TextStyle(fontSize: 30)),
                ),
                // SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "1";
                        showValues = number1;
                      } else {
                        number2 += "1";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("1", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "2";
                        showValues = number1;
                      } else {
                        number2 += "2";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("2 ", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "3";
                        showValues = number1;
                      } else {
                        number2 += "3";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("3", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operation = "*";
                    });
                  },
                  child: const Text("*", style: TextStyle(fontSize: 30)),
                ),
                // SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (operation.isEmpty) {
                        number1 += "0";
                        showValues = number1;
                      } else if (number1.isNotEmpty &&
                          operation.isNotEmpty &&
                          number2.isNotEmpty) {
                        // Do nothing to prevent multiple zeros after calculation
                      } else {
                        number2 += "0";
                        showValues = number2;
                      }
                    });
                  },
                  child: const Text("0", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    setState(() {
                      number = 0;
                      number1 = "";
                      number2 = "";
                      operation = "";
                      showValues = "0";
                    });
                  },
                  child: const Text(
                    "C",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (number1 == "" || number2 == "") return;

                      double newNum1 = double.parse(number1);
                      double newNum2 = double.parse(number2);
                      double result = 0;

                      if (operation == "+") {
                        result = newNum1 + newNum2;
                      } else if (operation == "-") {
                        result = newNum1 - newNum2;
                      } else if (operation == "*") {
                        result = newNum1 * newNum2;
                      } else if (operation == "/") {
                        result = newNum1 / newNum2;
                      }
                      showValues = result.toString();
                      number1 = result.toString();
                      number2 = "";
                      operation = "";
                    });
                  },
                  child: const Text("=", style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      operation = "/";
                    });
                  },
                  child: const Text("/", style: TextStyle(fontSize: 30)),
                ),
                // SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
