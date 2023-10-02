import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_boilerplate/src/routes/app_pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signin page'),leading: IconButton(
        onPressed: ()=>context.go(Routes.SPLASH),
        icon: const Icon(Icons.arrow_back_ios),
      ),),
      body: ListView(
        children: const [
          Text('Sign-in page')
        ],
      ),
    );
  }
}
