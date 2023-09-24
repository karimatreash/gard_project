import 'package:flutter/material.dart';
import 'package:matket/modul/cartm.dart';
import 'package:matket/pages/cart.dart';
import 'package:matket/pages/detail_item.dart';
import 'package:provider/provider.dart';
import '../componant/prudct_item.dart';

class prudctpage extends StatefulWidget {
  const prudctpage({super.key});

  @override
  State<prudctpage> createState() => _prudctpageState();
}

class _prudctpageState extends State<prudctpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
        onPressed: () =>
            Navigator.push((context), MaterialPageRoute(builder: (context) {
          return cart();
        })),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Good morning sir!!',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Dancing Script',
                    letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'lets order item for you ',
                style: TextStyle(fontSize: 34, fontFamily: 'Kaushan Script'),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 24,
            ),


            Flexible(

                child: Consumer<cartm>(builder: (context, value, child) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemCount: value.Shopitem.length,
                  itemBuilder: (context, index) {
                    return GroceryitemTile(
                      itemname: value.Shopitem[index][0],
                      itemprice: value.Shopitem[index][1],
                      itempath: value.Shopitem[index][2],
                      color: value.Shopitem[index][3],
                      onPressed: () {
                        Provider.of<cartm>(context, listen: false)
                            .detail(index);
                             //addItemtoCart
                      },
                    );
                  });
            }))
          ],
        ),
      ),
    );
  }
}
