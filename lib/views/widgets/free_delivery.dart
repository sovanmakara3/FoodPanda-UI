import 'package:flutter/material.dart';

class FreeDelivery extends StatelessWidget {
  FreeDelivery({
    super.key,
  });

  final List<Item> items = [
    Item(name: 'Nom Banh Chok Teuk Kapik 97 (Tuek Lak III', deliveryFee: '2', category: 'Vietnamese', discount: '20', imageUrl: 'assets/freeDelivery/NomBanhChok.jpg'),
    Item(name: 'DAEM CAFE By Sambo ({hsar Samaki)', deliveryFee: '1.5', category: 'Tea & Coffee', discount: '30', imageUrl: 'assets/freeDelivery/deam_cafe.jpg'),
    Item(name: 'Gong cha - (Funmall)', deliveryFee: '2', category: 'Milk Tea', discount: '10', imageUrl: 'assets/freeDelivery/gongCha.jpg'),
    Item(name: 'Mikes Burger House (St. 2004)', deliveryFee: '2.5', category: 'Burgers', discount: '8', imageUrl: 'assets/freeDelivery/mikeBurger.jpg'),
    Item(name: 'Pteas Nom Banch Chok Khuor Kdam Original (Pur Senchey)', deliveryFee: '2', category: 'Snacks', discount: '20', imageUrl: 'assets/freeDelivery/pteasNomBanhChok.jpg'),
    Item(name: 'The Cake by Dav (Kampuchea Krom Blvd.)', deliveryFee: '3', category: 'Cakes & Bakery', discount: '20', imageUrl: 'assets/freeDelivery/theCake.jpg'),
    Item(name: 'Burger Boi (Aeon Mall II)', deliveryFee: '1.5', category: 'Burgers', discount: '5', imageUrl: 'assets/freeDelivery/burgerBoi.jpg'),
    Item(name: 'Khmer Roast Duck ( St. 339 TK)', deliveryFee: '1.5', category: 'Rice Dishes', discount: '15', imageUrl: 'assets/freeDelivery/roasterDuck.jpg'),
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
            height: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
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
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                        decoration: const BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(17),),
                        ),
                        child:  Text('${items[index].discount!}  % OFF', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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
                    Text('\$ ${items[index].deliveryFee!} delivery fee', style: TextStyle(fontWeight: FontWeight.bold),),
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
  final String? deliveryFee;
  final String? category;
  final String? imageUrl;
  final String? discount;

  Item({this.name, this.deliveryFee, this.imageUrl, this.category, this.discount});

}
