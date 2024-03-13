import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// ignore: must_be_immutable
class TopDeals extends StatelessWidget {
  TopDeals({super.key});

  List<Item> items = [
    Item(name: 'PHAMARCIE VIMEANSURSDEI', duration: '30', fee: '0.66', imageUrl: 'assets/top_deals/phamarcie.jpg',),
    Item(name: 'Nature Republic', duration: '20', fee: '1.20', imageUrl: 'assets/top_deals/NatureRepublic.jpg',),
    Item(name: 'Phamarcie 17 Phamar', duration: '15', fee: '1.50', imageUrl: 'assets/top_deals/phamarcie17.jpg',),
    Item(name: 'Miniso (Olympia Mall)', duration: '25', fee: '0.78', imageUrl: 'assets/top_deals/miniso.jpg',),
    // Item(name: 'Baby World (Toul Kork)', duration: '20', fee: '0.54', imageUrl: 'assets/top_deals/babyworld.jpg',),
    // Item(name: 'Green Town Vegetables', duration: '25', fee: '0.66', imageUrl: 'assets/top_deals/greentown.jpg',),
    // Item(name: '2Broshop', duration: '30', fee: '1.14', imageUrl: 'assets/top_deals/broshop.jpg',),
    // Item(name: 'Aplus Fresh Fruit', duration: '35', fee: '1.32', imageUrl: 'assets/top_deals/AplusFreshFruit.jpg',),
    // Item(name: 'Pidao Flower Shop', duration: '1h 5', fee: '1.02', imageUrl: 'assets/top_deals/pidoaFlowerShop.jpg',),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: SizedBox(
                  width: 100.0, // fixed width and height
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      items[index].imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  items[index].name!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis),
                ),
                subtitle: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      size: 17,
                    ),
                    Text(
                      ' ${items[index].duration!} mins ',
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                    const Text(
                      ' \u2022 ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Icon(
                      Ionicons.bicycle_outline,
                      size: 17,
                    ),
                    Text(' \$ ${items[index].fee!}'),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Ionicons.heart_outline,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Item {
  final String? name;
  final String? duration;
  final String? fee;
  final String? imageUrl;

  Item({this.name, this.duration, this.fee, this.imageUrl});
}
