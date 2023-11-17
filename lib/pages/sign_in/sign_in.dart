import 'package:appbloc/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildApp(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildThirdPartyLogin(context),
                  reuseableText('Or use your email account to login'),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reuseableText('Email'),
                      buildTextFormField('Enter email', 'email', Icons.person, null),
                      const SizedBox(
                        height: 30,
                      ),
                      reuseableText('Password'),
                      buildTextFormField('Enter password', 'password', Icons.lock, Colors.black),
                      // Without icon


                    ],
                  ),
                  ForgetPasswordLink(),

                  loginButton('Login'),

                ],
              ),
            ),
          ),
      ),
    )
    );
  }
}
