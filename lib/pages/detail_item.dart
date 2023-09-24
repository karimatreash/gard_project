import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../modul/cartm.dart';
class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page'),
      ),
      body: Consumer<cartm>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(child: ListView.builder(itemCount: value.Detailitem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListTile(
                          leading: Image.asset(value.Detailitem[index][2],height: 36,),
                          title: Text(value.Detailitem[index][0]),
                          subtitle: Text(value.Detailitem[index][1]+'\$'),
                    trailing: IconButton(
                    icon: Icon(Icons.cancel_rounded),
                    onPressed: ()=> Provider.of<cartm>(context,listen: false).removeItemFromd(index),
    /*trailing: IconButton(
                            icon: Icon(Icons.cancel_rounded),
                            onPressed: ()=> Provider.of<cartm>(context,listen: false).removeItemFromCart(index),
                          ),*/
                        ),
                      ),
                      )                   );
                  }))
            ],
          );
        },
      )
    );
  }
}

