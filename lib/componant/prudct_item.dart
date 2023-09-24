import 'package:flutter/material.dart';
import 'package:matket/pages/detail_item.dart';
import 'package:provider/provider.dart';

import '../modul/cartm.dart';
import 'BackgroundClipper.dart';
class GroceryitemTile extends StatelessWidget {
  final String itemname;
  final String itemprice;
  final String itempath;
  final color;
  void Function()? onPressed;
   GroceryitemTile({
    super.key,
    required this.itemname, required this.itemprice, required this.itempath, this.color, required this.onPressed
});



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding:  EdgeInsets.all(12.0),
        child: InkWell(
          onTap: (){
            onPressed;
            Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a,b)=>Detail_page()));
          },

          child: Stack(
clipBehavior: Clip.none,
children: [

              /*Align(alignment: Alignment.topCenter,
                  child: Image.asset(itempath,height: 100,scale: 1.5,)),*/
              Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: color[200],
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(50)),
              ),

                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Center(child: Text(itemname,style: TextStyle(fontSize: 15),)),


                   /* MaterialButton(onPressed: onPressed,color: color,
                      child: Text(itemprice+ '\$',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),)*/
                  ],
                ),


            ),
              Positioned(


                bottom:70,
                right: 30,
                child:  Image.asset(itempath,height: 100,scale: 1.5,),),
  Positioned(bottom: 0,
      left: 140,
      child: FloatingActionButton.small(onPressed: onPressed,child: Icon(Icons.arrow_forward_sharp,color: Colors.white,),backgroundColor: Colors.black,))

         ] ),
        ),
      )
    );
  }
}

 /*class BackgroundClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var roundnessFactor = 50.0;
   var paht =Path();
    paht.moveTo(0, size.height * 0.33);
    paht.lineTo(0, size.height - roundnessFactor);
    paht.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    paht.lineTo(size.width - roundnessFactor, size.height);
    paht.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    paht.lineTo(size.width, roundnessFactor * 2);
    paht.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    paht.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    paht.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);



   return paht ;

  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  
}
Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Stack(
          children:[ InkWell(
            onTap: (){
              onPressed;
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail_page()));
          Navigator.push(context, PageRouteBuilder(pageBuilder: (context,a,b)=>Detail_page()));
    },

            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'background',
                child: Container(
                        width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.6,

                    decoration: BoxDecoration(

                     gradient: LinearGradient(
                       colors: [color,color[800]],
                       begin: Alignment.bottomLeft,
                       end: Alignment.topRight

                     ),
                  ),

                  //image

                ),
              ),
            ),

          ),
            Align( alignment: Alignment.topCenter, child: Image.asset(itempath,scale: 1.5,)),
            Positioned(

              left: 100,
              bottom: 140,
              child: Column(children: [
                Text(itemname,style: TextStyle(color: Colors.white,fontFamily: 'Kaushan Script',fontSize: 30)),
                SizedBox(height: 15,),
                Text(itemprice +'\$',style: TextStyle(color: Colors.white,fontFamily: 'Kaushan Script'),),
                MaterialButton(onPressed: onPressed,color: color,
                  child: Text(itemprice+ '\$',style: TextStyle(color: Colors.white,fontSize: 15),),)
              ],),
            )
          ]

        ),
      ),*/