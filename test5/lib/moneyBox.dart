import 'package:flutter/material.dart';

class MoneyBox extends StatelessWidget {
  // const MoneyBo({super.key});

  String title;
  double amount;
  double sizeConHeight;
  // double sizeConWidth ;
  Color colors;
  double borderradius;

  MoneyBox({
    required this.title,
    required this.amount,
    required this.sizeConHeight,
    // required this.sizeConWidth,
    required this.colors,
    required this.borderradius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(borderradius),
      ),
      height: sizeConHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            ' $title',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Text(
              ' $amount  ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
