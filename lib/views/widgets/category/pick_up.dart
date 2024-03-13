// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
//
// class pickUp extends StatelessWidget {
//   const pickUp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: Colors.pink,
//         title: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Pick-up",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black
//               ),
//             ),
//             Text(
//               "2 St 562",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//         actions: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Ionicons.heart_outline,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.shopping_bag_outlined,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       backgroundColor: Colors.grey.shade100,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/daily_deals.dart';

import '../popular_restaurants.dart';
import '../top_brands.dart';

void main() {
  runApp(pickUp());
}

class pickUp extends StatefulWidget {
  @override
  State<pickUp> createState() => _pickUpState();
}

class _pickUpState extends State<pickUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          foregroundColor: Colors.pink,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context, false);
            },
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "113D 111K",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Pick-up",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_outline_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(116, 228, 228, 228),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 16.0,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.pink,
                    ),
                    onPressed: () {
                      // Handle settings icon press
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: DailyDeals(),
                ),
                const SizedBox(
                  height: 20,
                ),

                // Map
                Container(
                  height: 295,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 200,
                                    child: const Text(
                                      'Explore restaurants \naround you',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.white,
                                  ),
                                  Text('Show map', style: TextStyle(fontSize: 16, color: Colors.white),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30), // Adjust spacing as needed
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0), // Apply border radius to the outermost Container
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

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
                            height: 180,
                            child: TopBrand(),
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 16.0), // Set left margin
                              child: const Text('All restaurants',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),

                          // Pasta Corner
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://mir-s3-cdn-cf.behance.net/projects/404/60105b174977731.Y3JvcCwxMDQzLDgxNiwyMDYsMA.jpg',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(left: 16.0, top: 8.0), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Pasta Coner',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Pasta',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '700m away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Bay cha Mi Cha
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpUVaxSCJXsunIdzgw85odZcCGj4YqTBqQVRLBAVXwvRAw5kpBafKrkV7Xnzu77FaHU4A&usqp=CAU',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bay Cha Mi Cha',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Rice Noodles',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '2.1km away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Ah Mok Curry
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://media-cdn.tripadvisor.com/media/photo-s/0f/55/68/9f/traditional-khmer-steamed.jpg',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Ah Mok Curry',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$ . Rice',
                                          style: TextStyle(
                                              color: Colors.grey.shade600,),
                                        ),
                                        Text(
                                          '2.4KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Khmer Noodle
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/w_1120,h_650/v1620068203/Traditional-Cambodian-Dishes-To-Eat-Khmer-Noodles/Traditional-Cambodian-Dishes-To-Eat-Khmer-Noodles.jpg',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Khmer Noodle',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Noodles',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Bay sach Chrok
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://media.cnn.com/api/v1/images/stellar/prod/191122151358-4-bai-sach-chrouk-lina-goldberg.jpg?q=w_1110,c_fill',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bay Sach Chrok',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Rice',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Kui Teav
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://a.cdn-hotels.com/gdcs/production61/d1911/f14df1cc-51e1-46d8-84d9-4db19129f071.jpg',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Kui Teav',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Noodles',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '2.1 KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://a.cdn-hotels.com/gdcs/production193/d1771/5c013c5d-4b9d-466c-b540-ad62517114a1.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Samlor machu trey',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Soup',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Stir Fried lemongrass beef
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://a.cdn-hotels.com/gdcs/production157/d402/bafcea18-3e06-49ab-9c41-47f2dfbacfc5.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Stir-fried lemongrass beef',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$ . Rice',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '5.1 KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Cambodian sausage
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://a.cdn-hotels.com/gdcs/production9/d337/fdde9076-075a-465c-80b1-bbf78faa7560.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Cambodian sausage',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Soup',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1.1 KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Lok Lak
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://a.cdn-hotels.com/gdcs/production114/d696/69cd96bf-5eb5-4859-8d3f-5e9889bfe76a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Lok Lak',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$ . Soup',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Pizza
                          Container(
                            height: 265,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align main Column to the left
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/9/91/Pizza-3007395.jpg',
                                      height: 180,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16, top: 8), // Set left and top padding
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Pizza',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '\$\$\$ . Pizza',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          '1KM away',
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWithBorderRadius extends StatelessWidget {
  final String imageUrl;

  const CardWithBorderRadius({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: SizedBox(
          height: 180,
          width: 150,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
