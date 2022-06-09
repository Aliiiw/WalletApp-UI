import 'package:flutter/material.dart';

import 'bar_chart.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key, required this.incomes}) : super(key: key);

  final List<double> incomes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          'Weekly Spend',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.yellow[300], fontSize: 20),
        ),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: Colors.grey,)),
             const Text('Jan 7,2022 - Jan 14,2022', style: TextStyle(color: Colors.white, letterSpacing: 1.2),)
            ,IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward, color: Colors.grey,)),
          ],
        ),
        const SizedBox(height: 32,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BarChart(
              label: 'Su',      //sunday
              amount: incomes[0],
              mostPrice: 300,
            ),
            BarChart(
              label: 'Mo',      //sunday
              amount: incomes[1],
              mostPrice: 400,
            ),
            BarChart(
              label: 'Tu',      //sunday
              amount: incomes[2],
              mostPrice: 250,
            ),
            BarChart(
              label: 'Wu',      //sunday
              amount: incomes[3],
              mostPrice: 600,
            ),
            BarChart(
              label: 'Th',      //sunday
              amount: incomes[4],
              mostPrice: 540,
            ),
            BarChart(
              label: 'Fr',      //sunday
              amount: incomes[5],
              mostPrice: 700,
            ),
            BarChart(
              label: 'Sa',      //sunday
              amount: incomes[6],
              mostPrice: 100,
            ),
          ],
        )


      ],
    );
  }
}
