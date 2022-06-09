import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key, required this.label, required this.amount, required this.mostPrice}) : super(key: key);

  final String label;
  final double amount;
  final double mostPrice;
  final double _max = 150;

  @override
  Widget build(BuildContext context) {
    final barItemHeight = amount / mostPrice * _max;
    return Column(
      children: [
        Text('\$${amount.toStringAsFixed(2)} ', style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
        const SizedBox(height: 4,),
        Container(
          height:  barItemHeight,
          width:  20,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(4)
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        )

      ],
    );
  }
}
