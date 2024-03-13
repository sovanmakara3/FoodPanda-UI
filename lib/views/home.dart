import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/appbar.dart';
import 'package:foodpanda_ui/views/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      /// Appbar
      // appBar: AppBar(
      //   foregroundColor: Colors.white,
      //   title: const Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         "2 St 562",
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 19,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Text(
      //         "Phnom Penh",
      //         style: TextStyle(
      //           fontSize: 14,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Colors.pink,
      //   actions: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         IconButton(
      //           onPressed: () {
      //             Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
      //           },
      //           icon: const Icon(
      //             Icons.favorite_outline_rounded,
      //             color: Colors.white,
      //           ),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.shopping_bag_outlined,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      drawer: const SafeArea(
        child: MyDrawer(),
      ),
      body: const AppBarSliver(),
    );
  }
}
