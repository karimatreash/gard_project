import 'package:flutter/material.dart';
class cartm extends ChangeNotifier {
  final List _itemshop = [
    ['Spaicy Chees', '2.00', 'image/Lion1.jpg', Colors.yellow],
    ['Salt', '2.00', 'image/Lions.jpg', Colors.grey],
    ['Limon', '2.00', 'image/Lionl.jpg', Colors.green],
    ['Ketchup', '2.00', 'image/Lion-ketchup.jpg', Colors.red],
    ['SaltVinegar', '2.5', 'image/Lionsv.jpg', Colors.blue],
    ['SaltVinegar', '2.5', 'image/Lio.png', Colors.blue],


  ];
  List _cartitem = [];
  List _detailitem = [1];

  get Shopitem => _itemshop;

  get CArtItem => _cartitem;

  get Detailitem => _detailitem;

  //add item to cart
  void addItemtoCart(int index) {
    _cartitem.add(_itemshop[index]);
    notifyListeners();
  }

//remove item
  void removeItemFromCart(int index) {
    _cartitem.removeAt(index);
    notifyListeners();
  }

//calculate price
  String calcualeprice() {
    double totalprice = 0;
    for (int i = 0; i < _cartitem.length; i++) {
      totalprice += double.parse(_cartitem[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }

  void detail(int index) {
    _detailitem.add(_itemshop[index]);
    notifyListeners();
  }

  void removeItemFromd(int index) {
    _detailitem.removeAt(index);
    notifyListeners();
  }
}