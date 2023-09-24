import 'dart:math';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register A new Acount',
              style: TextStyle(fontSize: 15, color: Colors.blue[900]),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    fixedSize: Size(200.0, 50.0)),
                onPressed: () {},
                label: Text(
                  'Current Location',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                icon: Icon(
                  Icons.my_location,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  //  border: OutlineInputBorder(),
                  hintText: 'coustmerName',
                  label: Text('UserName'),
                  suffixIcon: Icon(
                    Icons.account_box,
                    color: Colors.blue[900],
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  //  border: OutlineInputBorder(),
                  hintText: 'coustmer@gmail.com',
                  label: Text('Email'),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.blue[900],
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                  //  border: OutlineInputBorder(),
                  hintText: '059-xxx-xxxx',
                  label: Text('ContactNo'),
                  suffixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.blue[900],
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
                decoration: InputDecoration(
                    // icon: Icon(Icons.lock, color: Colors.blue[900],), //icon at head of input
                    //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                    labelText: "Password",
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue[900],
                    ) //icon at tail of input
                    )),
            SizedBox(
              height: 5,
            ),
            TextField(
              maxLines: 4,
              minLines: 1,
              decoration: InputDecoration(
                //  border: OutlineInputBorder(),
                hintText: 'test adreess',
                label: Text('Address'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  fixedSize: Size(200, 50),
                ),
                onPressed: () {},
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SingleChildScrollView(),],

        ),
      ),
    );
  }
}
