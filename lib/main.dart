import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/userProvider.dart';
import 'package:flutter_application_2/screens/homeScreen.dart';
import 'package:flutter_application_2/screens/loginscreen.dart';
import 'package:provider/provider.dart';

void main(){
 runApp(
  ChangeNotifierProvider(create: (context)=>userProvider(),
  child:myapp() ,
  ),

 );
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}