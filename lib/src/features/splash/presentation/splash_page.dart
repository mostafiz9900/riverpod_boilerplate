

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routes/app_pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
      body: Column(
        children: [
          const Text('Splash screen'),
          ElevatedButton(onPressed: (){
            context.pushReplacement(Routes.SIGNIN);
          }, child:const Text("SignIn")),

          ElevatedButton(onPressed: (){
            context.goNamed(Routes.SIGNUP);
          }, child:const Text("SignUp")),
        ],
      ));
  }
}

