import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';


class PandaSend extends StatelessWidget {
  const PandaSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.pink,
        actions: [
          Text('pandasend orders'),
          IconButton(onPressed: (){}, icon: Icon(Ionicons.receipt_outline))
        ],
      ),
    );
  }
}
