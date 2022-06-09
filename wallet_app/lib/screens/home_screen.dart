import 'package:flutter/material.dart';
import 'package:wallet_app/models/data.dart';

import '../widgets/chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontSize: 24),
        actions: [
          IconButton(onPressed: (){},
              icon:  Icon(Icons.add, size: 32, color: Colors.grey[700],))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.settings, color: Colors.grey,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title:  const Text('Weekly Analyse', style: TextStyle(
          color: Colors.grey
        ),),
      ),
      body:  CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration:   BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(0, 2),
                    blurRadius: 6
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Chart(incomes: weeklySpending,),
            );

          },
            childCount: 1
          )),
          
        ],

      ),
      backgroundColor: Colors.grey[850],

    );
  }
}
