import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryList extends StatelessWidget {
  CategoryList({Key? key});

  List<Item> shop = [
    Item(name: 'Groceries', imageUrl: 'assets/shop/grocery.png'),
    Item(name: 'Convenience', imageUrl: 'assets/shop/store.png'),
    Item(name: 'Beverages', imageUrl: 'assets/shop/alcohol.png'),
    Item(name: 'Beauty', imageUrl: 'assets/shop/lipstick.png'),
    Item(name: 'Health', imageUrl: 'assets/shop/pill.png'),
    Item(name: 'Electronics', imageUrl: 'assets/shop/user-interface.png'),
    Item(name: 'Flowers', imageUrl: 'assets/shop/bouquet-of-flowers.png'),
    Item(name: 'Bakery', imageUrl: 'assets/shop/cupcake.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: shop.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SizedBox(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade200,
                            ),
                            padding: EdgeInsets.all(8),
                            height: 60,
                            child: Image.asset(shop[index].imageUrl!),
                          ),
                          Container(
                            // padding: const EdgeInsets.only(top: 0),
                            child: Text(
                              shop[index].name!,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String? name;
  final String? imageUrl;
  final String? tag; // New property for the tag

  Item({this.name, this.imageUrl, this.tag});
}
