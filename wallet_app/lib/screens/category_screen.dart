
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for(var element in widget.category.incomes){
      total += element.price;
    }
    final double leftPrice = widget.category.maxPrice - total;
    
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(widget.category.name),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add, size: 30,))
        ],
      ),
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(0, 2),
                    blurRadius: 7
                  )
                ]
              ),
               
            )
          ],
        ),
      ),
    );
  }
}
