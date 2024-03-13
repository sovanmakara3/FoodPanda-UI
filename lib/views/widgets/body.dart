import 'package:flutter/material.dart';
import 'package:foodpanda_ui/views/widgets/category/food_delivery.dart';
import 'package:foodpanda_ui/views/widgets/category/groceries.dart';
import 'package:foodpanda_ui/views/widgets/category/pandasend.dart';
import 'package:foodpanda_ui/views/widgets/popular_restaurants.dart';
import 'package:foodpanda_ui/views/widgets/recommend_foryou.dart';
import 'package:foodpanda_ui/views/widgets/shop.dart';
import 'category/pick_up.dart';
import 'daily_deals.dart';
import 'free_delivery.dart';
import 'top_brands.dart';

class BodyContainer extends StatelessWidget {
  BodyContainer({
    super.key,
  });

  final boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    border: Border.all(
      color: Colors.grey.shade400,
      width: 0.5,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Food delivery
          InkWell(
            onTap: () { Navigator.push(context, MaterialPageRoute(
                builder: (context) => const FoodDelivery()));
              },

            // Food Delivery
            child: Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: boxDecoration,
              child: Padding(
                padding:
                const EdgeInsets.only(left: 15, top: 15, right: 5, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Food Delivery',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const Text('Order food you love'),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/Images/burger1.png',
                        fit: BoxFit.contain,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Categories
          Row(
            children: [
              // Groceries
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () { Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Groceries()));
                  },

                  /// Groceries
                  child: Container(
                    margin: const EdgeInsets.only(right: 8, left: 16),
                    decoration: boxDecoration,
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 15, right: 5, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Groceries',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Supermarkets, Marts \nShops, & more',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/Images/Drink_melon.png',
                              fit: BoxFit.contain,
                              width: 120,
                              height: 120,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              /// Pick_up
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () { Navigator.push(context, MaterialPageRoute(
                              builder: (context) => pickUp()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 16, left: 8, bottom: 8),
                            decoration: boxDecoration,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pick-up',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Up to 50% off',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      'assets/Images/order.png',
                                      //fit: BoxFit.contain,
                                      width: 100,
                                      height: 100,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// pandasend
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () { Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const PandaSend()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 16, left: 8, top: 8),
                            decoration: boxDecoration,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'pandasend',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      const Flexible(
                                          child: Text(
                                            'Send parcels \nin a tap',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                      Image.asset(
                                        'assets/Images/hold.png',
                                        height: 45,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // popular restaurants
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text('Popular Restaurants', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  SizedBox(
                    height: 310,
                    child: PopularRestaurant(),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text('Popular shops', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  // top brand slide
                  SizedBox(
                    height: 170,
                    child: TopBrand(),
                  ),

                  // Label Free delivery
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 16),
                    child: Text('Free delivery', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  //Free delivery slide
                  SizedBox(
                    height: 320,
                    child: FreeDelivery(),
                  ),

                  // Label
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 16),
                    child: Text('Recommend for you', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  // Recommend for you slide
                  SizedBox(
                      height: 310,
                      child: RecommendForYou(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 16),
                    child: Text('Your daily deals', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  // your daily deals slide
                  SizedBox(
                    height: 200,
                    child: DailyDeals(),
                  ),


                  // Become pro
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 16, left: 16, right: 16),
                    child: SizedBox(
                      height: 85,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Become a pro', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                                      Text('and get exclusive deals'),
                                    ],
                                  ),
                              ),
                              Transform.rotate(
                                angle: -0.2,
                                child: Image.asset(
                                  'assets/Images/become_pro.png',
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 16),
                    child: Text('Shops', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 22),),
                  ),

                  // Shops slide
                  SizedBox(
                      height: 160,
                      child: Shops(),
                  ),


                  // Earn a $3 voucher
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      height: 85,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Earn a \$3 voucher', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                                    Text('when you refer a friend'),
                                  ],
                                ),
                              ),
                              Image.asset('assets/Images/gift.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  // Try panda rewards!
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Try panda rewards!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                                  Text('Earn points and win prizes'),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/Images/reward.png',
                              height: 80,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

