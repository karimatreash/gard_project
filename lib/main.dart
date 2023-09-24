//import 'dart:js';

//import 'dart:js';




import 'package:flutter/material.dart';
import 'package:matket/modul/cartm.dart';
import 'package:matket/pages/account.dart';
import 'package:matket/pages/cart.dart';
import 'package:matket/pages/fav.dart';
import 'package:matket/pages/login_page.dart';
import 'package:matket/pages/home.dart';
import 'package:matket/pages/nav.dart';
import 'package:matket/pages/register_page.dart';
import 'package:matket/pages/search.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
      ChangeNotifierProvider(create:(context)=>cartm() ,
  child:MaterialApp(
debugShowCheckedModeBanner: false,
  initialRoute: '/login',
  routes: {
  '/login':(context)=>login(),
  '/home':(context)=>Home(),
  '/register':(context)=>Register(),
  '/search':(context)=>search(),
  '/cart':(context)=>cart(),
  '/fav':(context)=>favorite(),
  '/account':(context)=>Account(),
  '/nav':(context)=>nav(),
},





      

  ),
  )
  );

}
