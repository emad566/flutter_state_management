
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MyProvider with ChangeNotifier{
  int counter  = 0;

  static MyProvider get(context, {listen = true}) => Provider.of<MyProvider>(context, listen: listen);
  void increment(){
    counter +=1;
    notifyListeners();
  }
}