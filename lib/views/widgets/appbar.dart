import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/body.dart';
import 'package:foodpanda_ui/views/widgets/category/carts.dart';
import 'package:ionicons/ionicons.dart';

import 'category/favorite.dart';

class AppBarSliver extends StatelessWidget {
  const AppBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          foregroundColor: Colors.white,
          floating: true,
          snap: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("2 St 562", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),),
              Text("Phnom Penh", style: TextStyle(fontSize: 14),),
            ],
          ),
          expandedHeight: 120.0,
          backgroundColor: Colors.pink,
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 8),
              icon: Icon(Ionicons.heart_outline),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
              },
            ),
            IconButton(
              padding: EdgeInsets.only(right: 16),
              icon: Icon(Ionicons.bag_outline),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
              },
            ),
          ],
          //floating: false,
          pinned: true,
          flexibleSpace: ListView(
            children: [
              SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search for shops & restaurants",
                      labelStyle: TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      icon: IconButton(
                        onPressed: () {},
                        icon: Icon(Ionicons.search_outline),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => BodyContainer(),
              childCount: 1,
            ),
        ),
      ],
    );
  }
}
