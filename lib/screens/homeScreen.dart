import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/userProvider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userprovider=context.watch<userProvider>();
    return Scaffold(

      body: Center(
        child: Text('username= ${userprovider.name}'),
      ),
    );


  }
}