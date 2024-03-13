// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DailyDeals extends StatelessWidget {
  DailyDeals({
    super.key,
  });

  List<Item> imageUrl = [
    Item(imageUrl: 'assets/daily_deals/1.jpg'),
    Item(imageUrl: 'assets/daily_deals/2.jpg'),
    Item(imageUrl: 'assets/daily_deals/3.jpg'),
    Item(imageUrl: 'assets/daily_deals/4.jpg'),
    Item(imageUrl: 'assets/daily_deals/5.jpg'),
    Item(imageUrl: 'assets/daily_deals/6.jpg'),
    Item(imageUrl: 'assets/daily_deals/7.jpg'),
    Item(imageUrl: 'assets/daily_deals/8.jpg'),
    Item(imageUrl: 'assets/daily_deals/9.jpg'),
    Item(imageUrl: 'assets/daily_deals/10.jpg'),
    Item(imageUrl: 'assets/daily_deals/20%.jpg'),
    Item(imageUrl: 'assets/daily_deals/50%.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrl.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(right: 8, left: 16, top: 16),
          width: MediaQuery.of(context).size.width * .38,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl[index].imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

class Item {
  final String? imageUrl;

  Item({this.imageUrl});
}
