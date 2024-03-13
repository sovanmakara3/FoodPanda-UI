import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/free_delivery.dart';
import 'package:foodpanda_ui/views/widgets/popular_restaurants.dart';
import 'package:foodpanda_ui/views/widgets/recommend_foryou.dart';
import 'package:foodpanda_ui/views/widgets/shop.dart';
import 'package:foodpanda_ui/views/widgets/top_brands.dart';
import 'package:ionicons/ionicons.dart';

import '../daily_deals.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          automaticallyImplyLeading: true,
          foregroundColor: Colors.pink,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Food delivery",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "2 St 562",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.heart_outline,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ],
            ),
          ],
          flexibleSpace: ListView(
            children: [
              const SizedBox(height: 40.0),
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
                      labelText: "Search for restaurants and cuisines",
                      labelStyle: const TextStyle(fontSize: 15),
                      border: InputBorder.none,
                      icon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.search_outline),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DailyDeals
            SizedBox(
              height: 200,
              child: DailyDeals(),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Up to 50% off',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.pink),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 320,
              child: FreeDelivery(),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Brands',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: TopBrand(),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Newbie',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.pink),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 300,
              child: FreeDelivery(),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 16, left: 16, right: 16),
              child: SizedBox(
                height: 120,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Become a pro',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text('and get exclusive deals'),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: -0.2,
                          child: Image.asset(
                            'assets/Images/become_pro.png',
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 16, left: 16, right: 16),
              child: SizedBox(
                height: 120,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Try panda rewards!',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text('Earn points and win prizes'),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: -0.2,
                          child: Image.asset(
                            'assets/Images/reward.png',
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 320,
              child: PopularRestaurant(),
            ),
            SizedBox(
              height: 320,
              child: RecommendForYou(),
            ),
            SizedBox(
              height: 300,
              child: Shops(),
            ),
          ],
        ),
      ),
    );
  }
}
