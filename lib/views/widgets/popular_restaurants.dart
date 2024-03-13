import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PopularRestaurant extends StatelessWidget {
  PopularRestaurant({
    super.key,
  });


  final List<Item> items = [
    Item(name: 'Coffee Amazon (TK Central)', duration: '20', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/amazon.jpg'),
    Item(name: 'Coffee Plus (Calmette)', duration: '25', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/coffee_plus.jpg'),
    Item(name: 'KFC (Preah Monivong Blvd.)', duration: '30', category: 'Fast Food', imageUrl: 'assets/popular_restaurant/kfc.jpg'),
    Item(name: 'Pasta Corner (TK)', duration: '30', category: 'Pizza', imageUrl: 'assets/popular_restaurant/pasta.jpg'),
    Item(name: 'Coffee Plus (Mekong)', duration: '30', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/coffee+.jpg'),
    Item(name: 'Cup Bop (RUPP)', duration: '25', category: 'Ramen', imageUrl: 'assets/popular_restaurant/Cup_bop.jpg'),
    Item(name: 'Koi The (Reach Theany)', duration: '20', category: 'Milk Tea', imageUrl: 'assets/popular_restaurant/koi_the.jpg'),
    Item(name: 'Cafe WinWin Depo (Kilo 4 Market)', duration: '20', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/winwin_coffee.jpg'),
    Item(name: 'TUBE COFFEE BAK TOUK SCHOOL', duration: '25', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/tube_coffee.jpg'),
    Item(name: 'Soul Coffee Cambodia', duration: '20', category: 'Tea & Coffee', imageUrl: 'assets/popular_restaurant/soul_coffee.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 8),
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // stack for put something on picture like: top restaurant, and 15 min
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(items[index].imageUrl!,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                        decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8),),
                        ),
                        child: const Text('Featured', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(items[index].name!,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), overflow: TextOverflow.ellipsis,),
                    const SizedBox(height: 5),
                    Text("\$\$\$ \u2022 ${items[index].category!}",style: TextStyle(fontSize: 16, color: Colors.grey.shade700), overflow: TextOverflow.ellipsis,),
                    const SizedBox(height: 5),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        const Icon(Icons.watch_later_outlined, size: 17,),
                        Text('${items[index].duration!} min ', style: TextStyle(color: Colors.grey.shade800),),
                        const Text(' \u2022 ', style: TextStyle(color: Colors.grey),),
                        const Icon(Ionicons.bicycle_outline, size: 17, color: Colors.pink,),
                        const Text(' Gift: Free delivery', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Item{

  final String? name;
  final String? duration;
  final String? category;
  final String? imageUrl;

  Item({this.name, this.duration, this.imageUrl, this.category});

}
