import 'package:flutter/material.dart';
import 'package:food_app/utils/config.dart';

import 'button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            controller: _userController,
            keyboardType: TextInputType.name,
            cursorColor: Colors.white,
             style: TextStyle(color: Colors.white70),
            decoration: const InputDecoration(
              hintText: 'Username',
              labelText: 'Username',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Colors.red,
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          config.spaceSmall,
          TextFormField(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Colors.white,
            obscureText: obsecurePass,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
                hintText: ' Your Password',
                labelText: 'Password',
                 hintStyle: TextStyle(color: Colors.white70),
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.lock_clock_outlined),
                prefixIconColor: Colors.red,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecurePass = !obsecurePass;
                      });
                    },
                    icon: obsecurePass
                        ? const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility_outlined,
                            color: Colors.grey,
                          ))),
          ),
          config.spaceSmall,
          Button(
            width: double.infinity,
            title: 'Sign in',
            onPressed: () {
              // backend this here
              Navigator.of(context).pushNamed('main');
            },
            disable: false,
          ),
        ],
      ),
    );
  }
}
