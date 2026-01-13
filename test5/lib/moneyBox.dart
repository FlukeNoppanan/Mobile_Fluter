import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  // const MoneyBo({super.key});

  String title;
  double amount;
  double sizeConHeight;
  Color colors;
  double borderradius;

  MoneyBox({
    required this.title,
    required this.amount,
    required this.sizeConHeight,
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
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("##,###,###,###.##").format(amount)} Baht ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
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
