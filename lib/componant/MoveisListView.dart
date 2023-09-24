import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:matket/card/buildcard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../advcard.dart';
class MoveisListView extends StatefulWidget {

  const MoveisListView({super.key, });

  @override
  State<MoveisListView> createState() => _MoveisListViewState();
}

class _MoveisListViewState extends State<MoveisListView> {
  List<ADV> adv=[
    ADV(path: 'image/jawal.jpg'),
    ADV(path: 'image/indir.png'),
    ADV(path: 'image/Paltel.png')

  ];
 int activindex=1;

Widget buildindecator ()=>AnimatedSmoothIndicator(activeIndex:activindex, count: adv.length ,effect: WormEffect(),);

  @override
  Widget build(BuildContext context) {
    return Container(

        color: Colors.white,
        child:Column(
          children: [
            CarouselSlider.builder(

              options:CarouselOptions(
height: 200,
                  enlargeCenterPage:true ,
                  aspectRatio: 2.0,
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index,reaseon)=>
                  setState(()=>activindex=index),
                autoPlay: true,
                reverse:true
              ) ,
              //  scrollDirection: Axis.horizontal,
                itemCount: adv.length,
                itemBuilder: (context,i,realindex){
                  return buldADV(adv[i]);

                }),
            SizedBox(height: 15,),
            buildindecator(),
          ],
        ),
    );
  }
}

