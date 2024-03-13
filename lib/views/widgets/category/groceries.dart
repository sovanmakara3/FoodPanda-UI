import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/category/List/grocery_util/top_deal.dart';
import 'package:foodpanda_ui/views/widgets/top_brands.dart';

import 'List/grocery_util/grocery_list.dart';
import 'List/grocery_util/your_grocery.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.pink,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "197 Street 5",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Shops",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            icon: Icon(Icons.arrow_back, color: Colors.pink)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    placeholder: "Search for shops and products",
                    placeholderStyle: TextStyle(
                      fontSize: 14,
                    ),
                    prefix: const Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.search, color: Color(0xff7b7b7b)),
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(50)),
                    style:
                        const TextStyle(color: Color(0xff707070), fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.filter_list_outlined,
                  color: Colors.pink,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: CategoryList(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Popular shops',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),

            // top popular slide

            SizedBox(
              height: 170,
              child: TopBrand(),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Top Deals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),

            /// Todo
            SizedBox(child: TopDeals()),

            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Save big on your groceries',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              height: 210,
              child: YourGrocery(),
            ),
            SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 16),
              child: Text(
                'Shop by store',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            SizedBox(
              child: TopDeals(),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
