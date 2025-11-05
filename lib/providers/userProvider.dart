import 'package:flutter/material.dart';

class userProvider extends ChangeNotifier {
 String name='';
bool isLoading =false;


void setUsername(String username){
name = username;
notifyListeners();
}
Future<void>login() async{
isLoading =true;
notifyListeners();

await Future.delayed(Duration(seconds: 2));
isLoading =false;
notifyListeners();

}

}