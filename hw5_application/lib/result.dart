import 'package:flutter/material.dart';
import 'dart:math';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.digit1,
    required this.digit2,
    required this.digit3,
    required this.money,
  });

  final int digit1;
  final int digit2;
  final int digit3;
  final int money;

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNumber1 = random.nextInt(10);
    int randomNumber2 = random.nextInt(10);
    int randomNumber3 = random.nextInt(10);

    return Scaffold(
      appBar: AppBar(title: const Text('Result Page')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            if (digit1 == randomNumber1 &&
                digit2 == randomNumber2 &&
                digit3 == randomNumber3) ...[
              Text(
                'เลขที่คุณซื้อ คือ $digit3$digit2$digit1',
                style: const TextStyle(fontSize: 24, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text(
                'จำนวนเงินที่คุณซื้อ คือ ${money} บาท',
                style: const TextStyle(fontSize: 24, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text(
                '* เลขที่ออก คือ $randomNumber3$randomNumber2$randomNumber1',
                style: const TextStyle(fontSize: 24, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text(
                '* ยินดีด้วย! คุณถูกรางวัล',
                style: const TextStyle(fontSize: 24, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text(
                '* รับเงินรางวัล ${money * 100} บาท',
                style: const TextStyle(fontSize: 24, color: Colors.green),
              ),
            ] else ...[
              Text(
                'เลขที่คุณซื้อ คือ $digit3$digit2$digit1',
                style: const TextStyle(fontSize: 24, color: Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                'จำนวนเงินที่คุณซื้อ คือ ${money} บาท',
                style: const TextStyle(fontSize: 24, color: Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                '* เลขที่ออก คือ $randomNumber3$randomNumber2$randomNumber1',
                style: const TextStyle(fontSize: 24, color: Colors.red),
              ),
              SizedBox(height: 10),
              const Text(
                '* เสียใจด้วย! คุณไม่ถูกรางวัล',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 252, 21, 21),
                ),
              ),
            ],
            const SizedBox(height: 20),
            Center(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 79, 81, 82),
                    width: 2,
                  ),
                  textStyle: const TextStyle(fontSize: 32, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('กลับไปหน้าแรก'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
