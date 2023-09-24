import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matket/cardpruduct.dart';
import 'package:matket/advcard.dart';
import 'package:matket/card/buildcard.dart';
import 'package:matket/componant/BackgroundClipper.dart';
import 'package:matket/pages/cart.dart';
import 'package:matket/pages/prudctpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../componant/MoveisListView.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pruduct> product = [
    Pruduct(path: 'image/lion.jpg', name: 'Lion', price: ' 2.5'),
    Pruduct(path: 'image/da.jpg', name: 'doritos', price: '3.0'),
    Pruduct(path: 'image/lion.jpg', name: 'Lion', price: '50'),
    Pruduct(path: 'image/lion.jpg', name: 'Doretus', price: '10'),
  ];
  List<ADV> adv = [
    ADV(path: 'image/jawal.jpg'),
    ADV(path: 'image/indir.png'),
  ];
  int activindex=0;

  Widget buildindecator ()=>AnimatedSmoothIndicator(activeIndex:activindex, count: adv.length);
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtnt1 = _scrollController.position.minScrollExtent;
      double maxScrollExtnt1 = _scrollController.position.maxScrollExtent;

      animateToMaxMiv(maxScrollExtnt1, minScrollExtnt1, maxScrollExtnt1, 15,
          _scrollController);
    });
  }

  animateToMaxMiv(double max, double min, double direction, int second,
      ScrollController scrollController1) {
    scrollController1.animateTo(direction,
        duration: Duration(seconds: second), curve: Curves.linear);
  }

  Widget buldADV(adv) => Container(
      width: 400,
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(children: [
          Image.asset(adv.path),
        ]),
      ));
  Widget buldcard(product) => Container(
    width: 200,
    height: 300,
    color: Colors.white,
    child: Center(
      child: Column(
        children: [
          Image.asset(
            product.path,
            height: 150,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.name,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                width: 15,
              ),
              // IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: () {},)
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                          return prudctpage();
                        }));
                  },
                  icon: Icon(Icons.arrow_forward))
            ],
          ),
          // Text(product.price +' \$', style: TextStyle(fontSize: 14, color: Colors.grey),),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(child: MoveisListView()
              /* ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: adv.length,
                itemBuilder: (context,i){
                return buldADV(adv[i]);

                }),*/
              ),

          Padding(
            padding: const EdgeInsets.all(
              13.0,
            ),
            child: Row(
              children: [
                const Text(
                  'Company',
                  style: TextStyle(
                    fontFamily: 'Dancing Script',
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.account_balance_outlined,
                )
              ],
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(

                scrollDirection: Axis.horizontal,
                itemCount: product.length,
                itemBuilder: (context, i) {
                  return buldcard(product[i]);
                }),
          ),
        ],
      ),
    ));
  }
}

String _pathimg = 'image/lion.jpg';
