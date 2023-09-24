import 'package:flutter/material.dart';
import 'package:matket/modul/cartm.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('My Cart', style: TextStyle(color: Colors.blue[900])),
          centerTitle: true,
          /*   flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,colors: <Color>[
          Colors.red,
          Colors.blue
        ]))),*/
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue[900],
            ),
            onPressed: () {},
          ),

        ),
        backgroundColor: Colors.white,
        body: Consumer<cartm>(
          builder: (context, value, child) {
            return Column(
              children: [
                Expanded(child: ListView.builder(itemCount: value.CArtItem.length,
                    itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ListTile(
                        leading: Image.asset(value.CArtItem[index][2],height: 36,),
                        title: Text(value.CArtItem[index][0]),
                        subtitle: Text(value.CArtItem[index][1]+'\$'),
                        trailing: IconButton(
                          icon: Icon(Icons.cancel_rounded),
                          onPressed: ()=> Provider.of<cartm>(context,listen: false).removeItemFromCart(index),
                        ),
                      ),
                    ),
                  );
                }))
              ],
            );
          },
        ));
  }
}
