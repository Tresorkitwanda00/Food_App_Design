import 'package:flutter/material.dart';
import 'package:food_app/utils/config.dart';

import '../Components/login_form.dart';
import '../utils/text.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    config().init(context);
    // build logiin textfield
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppText.enText['welcome_text']!,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              config.spaceSmall,
              Text(
                AppText.enText['SignIn_text']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              config.spaceSmall,
              // login components here
              const LoginForm(), // let's build login form
              config.spaceSmall,
              Center(
                 child: Row(
                  children: [
                    Text(AppText.enText['Signup_text']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color:Colors.white70,
                    ),
                    ),
                    config.spaceSmall,
                   TextButton(
                  onPressed: () {
                    // backend this here
                    
                  
                  },
                  child: Text(
                    'Sign Up',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
                  ],
                 )
             
              ),
            ],
          ),
        ),
      ),
    );
  }
}
