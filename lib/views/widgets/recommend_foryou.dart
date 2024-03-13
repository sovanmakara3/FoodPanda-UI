import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RecommendForYou extends StatelessWidget {
  RecommendForYou({
    super.key,
  });

  final List<Item> items = [
    Item(name: 'Brown Coffee (IFL)', duration: '10', category: 'Tea & Coffee', imageUrl: 'assets/recommend/brown_ifl.jpg'),
    Item(name: 'Marugame Udon (Toul Kork)', duration: '5', category: 'Ramen', imageUrl: 'assets/recommend/udon.jpg'),
    Item(name: 'Asia Bento (TK)', duration: '20', category: 'Fast Food', imageUrl: 'assets/recommend/asia_bento.jpg'),
    Item(name: 'TK Royal 1 Starbucks', duration: '5', category: 'Tea & Coffee', imageUrl: 'assets/recommend/Tk_royalStarbucks.jpg'),
    Item(name: 'Bonchon (TK)', duration: '10', category: 'Fast Food', imageUrl: 'assets/recommend/Bonchon.jpg'),
    Item(name: '1 DUCK [HK Roast.Breakfast](TK)', duration: '15', category: 'Fast Food', imageUrl: 'assets/recommend/1duck.jpg'),
    Item(name: 'Britea (TK)', duration: '30', category: 'Milk Tea', imageUrl: 'assets/recommend/britea.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
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
                    // Positioned(
                    //   top: 10,
                    //   child: Container(
                    //     padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.pink,
                    //       borderRadius: BorderRadius.only(topRight: Radius.circular(17),),
                    //     ),
                    //     child: const Text('50% OFF', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    //   ),
                    // ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(17), bottomRight: Radius.circular(17)),
                        ),
                        child: const Text('Top Restaurant', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text( items[index].name!,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), overflow: TextOverflow.ellipsis,),
                    const SizedBox(height: 5),
                    Text("\$\$. ${items[index].category!}",style: TextStyle(fontSize: 16, color: Colors.grey.shade700), overflow: TextOverflow.ellipsis,),
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
