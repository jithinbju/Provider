import 'package:flutter/material.dart';
import 'package:flutter_application_2/providers/userProvider.dart';
import 'package:flutter_application_2/screens/homeScreen.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<userProvider>(context);
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      body: Center(
        // child: userprovider.isLoading
        //     ? CircularProgressIndicator()
        //     : Padding(
        //         padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    userprovider.isLoading ? CircularProgressIndicator():
  
                    ElevatedButton(
                      
                      onPressed: () async {
                        
                        final name = nameController.text;
                        userprovider.setUsername(name);
                        await userprovider.login();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Homescreen()),
                        );
                      },
                      child: Text('login'),
                    ),
                  ],
                ),
              ),
      );
    
  }
}
