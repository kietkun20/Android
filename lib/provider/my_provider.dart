import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends ChangeNotifier{
  int _value = 0;
  Future<int> getValue() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _value = await preferences.getInt('counter', ) ?? 0;
    return _value;
  }//Trạng thái của ứng dụng
  void incremnt() async{
    _value++;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('counter', _value).
      whenComplete(() => notifyListeners());
  }
}