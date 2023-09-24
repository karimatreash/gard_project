import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matket/pages/account.dart';
import 'package:matket/pages/cart.dart';
import 'package:matket/pages/fav.dart';
import 'package:matket/pages/home.dart';
import 'package:matket/pages/search.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

final List<Widget> tap = [Home(), search(), cart(), favorite(), Account()];
int cu = 0;

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cu,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            cu = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(
              CupertinoIcons.search_circle,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.shopping_cart,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
            label: 'Favourte',
            icon: Icon(
              CupertinoIcons.heart,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: 'Account'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: tap[cu],
    );
  }
}
