// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Shops extends StatelessWidget {
  Shops({
    super.key,
  });

  List<Item> shop = [
    Item(name: 'Groceries', imageUrl: 'assets/shop/grocery.png'),
    Item(name: 'Convenience', imageUrl: 'assets/shop/store.png'),
    Item(name: 'Beverages \n& Alcohol', imageUrl: 'assets/shop/alcohol.png'),
    Item(name: 'Beauty', imageUrl: 'assets/shop/lipstick.png'),
    Item(name: 'Health &\n Wellbeing', imageUrl: 'assets/shop/pill.png'),
    Item(name: 'Electronics', imageUrl: 'assets/shop/user-interface.png'),
    Item(name: 'Flowers and \nPlants', imageUrl: 'assets/shop/bouquet-of-flowers.png'),
    Item(name: 'Bakery &\nDessert', imageUrl: 'assets/shop/cupcake.png'),
    Item(name: 'Household &\nLiving', imageUrl: 'assets/shop/cleaning-spray.png'),
    Item(name: 'Pets', imageUrl: 'assets/shop/dog-food.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: shop.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Container(
            width: MediaQuery.of(context).size.width * .21,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                  padding: EdgeInsets.all(15),
                  height: 80,
                  child: Image.asset(shop[index].imageUrl!),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(shop[index].name!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Item {
  final String? name;
  final String? imageUrl;

  Item({this.name, this.imageUrl});
}
