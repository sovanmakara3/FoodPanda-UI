import 'package:flutter/material.dart';

class TopBrand extends StatelessWidget {

  TopBrand({super.key,});

  final List<Item> items = [
    Item(name: 'Chip Mong Supermarket', duration: '25', imageUrl: 'assets/Images/brandImage/chip_mong.png'),
    Item(name: 'AEON (SenSok Supermarket)', duration: '35', imageUrl: 'assets/Images/brandImage/aeon_online.png'),
    Item(name: 'Lucky Supermarket', duration: '25', imageUrl: 'assets/Images/brandImage/lucky.png'),
    Item(name: 'Aeon MaxValue Supermarket', duration: '25', imageUrl: 'assets/Images/brandImage/aeon-max.jpg'),
    Item(name: 'Ucare Pharmacy (TK Star)', duration: '20', imageUrl: 'assets/Images/brandImage/Ucare.png'),
    Item(name: 'Star Mart (Calmette)', duration: '25', imageUrl: 'assets/Images/brandImage/Star-Mart.png'),
    Item(name: 'Guardian (Toul Kork)', duration: '25', imageUrl: 'assets/Images/brandImage/guard.jpg'),
    Item(name: 'Baby World (Toul Kork)', duration: '20',  imageUrl: 'assets/top_deals/babyworld.jpg',),
    Item(name: 'Green Town Vegetables', duration: '25',  imageUrl: 'assets/top_deals/greentown.jpg',),
    Item(name: '2Broshop', duration: '30',  imageUrl: 'assets/top_deals/broshop.jpg',),
    Item(name: 'Aplus Fresh Fruit', duration: '35',  imageUrl: 'assets/top_deals/AplusFreshFruit.jpg',),
    Item(name: 'Pidao Flower Shop', duration: '1h 5',  imageUrl: 'assets/top_deals/pidoaFlowerShop.jpg',),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Container(
            width: MediaQuery.of(context).size.width * .23,
            //height: 150,
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
                  width: double.infinity,
                  height: 95,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(items[index].imageUrl!,
                      fit: BoxFit.contain ,
                    ),
                  ),
                ),
                Text(items[index].name!, style: TextStyle(fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                Text(items[index].duration! + ' mins', style: TextStyle(color: Colors.grey.shade800),),
              ],
            ),
          ),
        );
      },
      // child: Padding(
      //   padding: const EdgeInsets.only(left: 16, top: 16),
      //   child: Container(
      //     width: MediaQuery.of(context).size.width * .23,
      //     height: 150,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //     child: Column(
      //       children: [
      //         Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(10),
      //             color: Colors.grey.shade200,
      //           ),
      //           padding: EdgeInsets.all(15),
      //           height: 100,
      //           child: Image.asset('assets/Images/starbuck.png'),),
      //           Text('Starbuck', style: TextStyle(fontWeight: FontWeight.bold)),
      //           Text('20 mins', style: TextStyle(color: Colors.grey.shade800),),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class Item{

  final String? name;
  final String? duration;
  final String? imageUrl;

  Item({this.name, this.duration, this.imageUrl});

}
