import 'package:flutter/material.dart';
import 'package:wallet_app/models/data.dart';

import '../models/category.dart';
import '../models/color_status.dart';
import '../widgets/chart.dart';
import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildCategory(Category category, double total) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => CategoryScreen(category: category,))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[900],
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade800,
                offset: const Offset(0, 2),
                blurRadius: 6),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category.name,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${(category.maxPrice - total).toStringAsFixed(2)} / \$${category.maxPrice}',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              final double maxWidth = constraints.maxWidth;
              final double percent =
                  (category.maxPrice - total) / category.maxPrice;
              double barWidth = percent * maxWidth;

              if (barWidth < 0) {
                barWidth = 0;
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Container(
                      height: 20,
                      width: barWidth,
                      decoration: BoxDecoration(
                          color: getStatusColor(context, percent),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontSize: 24),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 32,
                color: Colors.grey[700],
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: const Text(
          'Weekly Analyse',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            if (index == 0) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade900,
                        offset: const Offset(0, 2),
                        blurRadius: 6)
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Chart(
                  incomes: weeklySpending,
                ),
              );
            } else {
              final Category category = categories[index - 1];
              double total = 0;

              for (var element in category.incomes) {
                total += element.price;
              }
              return _buildCategory(category, total);
            }
          }, childCount: 1 + categories.length)),
        ],
      ),
      backgroundColor: Colors.grey[850],
    );
  }
}
