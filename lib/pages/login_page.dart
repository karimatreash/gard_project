import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 50, 30),
          margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Image(
            image: AssetImage('image/logback.jpg'),
            height: 200.0,
          ),
        ),
        Text(
          'Login',
          style: TextStyle(
              color: Colors.blue[900],
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          'log in to your account',
          style: TextStyle(color: Colors.blue[500], fontSize: 20.0),
        ),
        SizedBox(
          height: 30.0,
        ),
        TextField(
          controller: myController,
          decoration: InputDecoration(
              //  border: OutlineInputBorder(),
              hintText: 'coustmer@gmail.com',
              label: Text('E-mail'),
              suffixIcon: Icon(
                Icons.account_box,
                color: Colors.blue[900],
              )),
        ),
        SizedBox(
          height: 14,
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
          height: 5.0,
        ),
        Row(
          children: [
            InkWell(
              child: Text('change password?'),
            ),
            SizedBox(
              width: 140.0,
            ),
            InkWell(
              child: Text('Forget password?'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: TextButton(
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue[900],
              fixedSize: Size(400.0, 50.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/nav');
            },
          ),
        ),
        SizedBox(height: 8.0),
        Center(
          child: TextButton(
            child: Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue[900],
              fixedSize: Size(400.0, 50.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ),
        SingleChildScrollView(),
      ]),
    ));
  }
}
