import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                //backgroundImage: AssetImage('image/back.jpg'),
                radius: 40,
              ),
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Karim atrash',
              style: TextStyle(
                  color: Colors.black, fontSize: 20.0, letterSpacing: 1.0),
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 15),
                Text(
                  'atrashkareem@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                )
              ],
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            TextButton.icon(
              onPressed: () {},
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Manege Profil',style: TextStyle(color: Colors.black ),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
               label: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Order invoice',style: TextStyle(color: Colors.black ),),
                Icon(Icons.arrow_forward_ios,color: Colors.black,)
              ],
            ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),TextButton.icon(
              onPressed: () {},
              label:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Placed order',style: TextStyle(color: Colors.black ),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('About',style: TextStyle(color: Colors.black ),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,)
                ],
              ),
              icon: Icon(
                CupertinoIcons.exclamationmark_circle,
                color: Colors.black,
              ),
            ),
            
            SizedBox(height: 100,),
            TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  fixedSize: Size(400.0, 50.0),
                ),onPressed: (){
                  Navigator.pushNamed(context, '/login');
            }, label: Text('LogOut'
            ,style: TextStyle(color: Colors.white,fontSize: 15),),
            icon: Icon(
              Icons.exit_to_app_outlined
                  ,color: Colors.white,
            ),)
          ],



        ),
      ),
    );
    ;
  }
}
