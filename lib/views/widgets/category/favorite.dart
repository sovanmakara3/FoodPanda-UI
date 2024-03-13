import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey.shade100,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              icon: Icon(Ionicons.arrow_back_outline),
            ),
            foregroundColor: Colors.pink,
            title: Text(
              'Favourites',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Ionicons.bag_outline))
            ],
            bottom: const TabBar(
              labelColor: Colors.pink,
              indicatorColor: Colors.pink,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: 'Restaurants'),
                Tab(text: 'Shops'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset(
                        'assets/Images/pizza.png'),
                  ],
                ),
              ),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}
