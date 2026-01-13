import 'package:flutter/material.dart';
import 'result.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _digits1 = TextEditingController();
  final _digits2 = TextEditingController();
  final _digits3 = TextEditingController();
  final _money = TextEditingController();

  void initState() {
    super.initState();
    _digits1.addListener(_updateText);
    _digits2.addListener(_updateText);
    _digits3.addListener(_updateText);
    _money.addListener(_updateText);
  }

  void _updateText() {
    setState(() {
      _digits1.text;
      _digits2.text;
      _digits3.text;
      _money.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fluke888',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'กรุณาใส่ตัวเลขที่ต้องการซื้อ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoxTree(100, 'หลักที่ 3', _digits3),
              const SizedBox(width: 10),
              BoxTree(100, 'หลักที่ 2', _digits2),
              const SizedBox(width: 10),
              BoxTree(100, 'หลักที่ 1', _digits1),
            ],
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'จำนวนเงินที่ต้องการซื้อ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: TextField(
                  controller: _money,
                  decoration: InputDecoration(labelText: 'จำนวนเงิน'),
                ),
              ),
              SizedBox(width: 10),
              const Text('บาท'),
            ],
          ),
          const SizedBox(height: 40),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              side: const BorderSide(
                width: 1.0,
                color: Color.fromARGB(255, 104, 103, 103),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(200, 80),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Result(
                      digit1: int.parse(_digits1.text),
                      digit2: int.parse(_digits2.text),
                      digit3: int.parse(_digits3.text),
                      money: int.parse(_money.text),
                    );
                  },
                ),
              );
            },
            child: const Text(
              'คลิกเพื่อตรวจรางวัล',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox BoxTree(W, NAME, number) {
    return SizedBox(
      width: W.toDouble(),
      child: TextField(
        controller: number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: NAME.toString(),
        ),
      ),
    );
  }
}
