import 'package:flutter/material.dart';

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
              height: 100,
              margin: const EdgeInsets.all(8),
              decoration:   BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black87,
                    offset: Offset(0, 2),
                    blurRadius: 6
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Chart(),
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
