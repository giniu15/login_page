import 'package:flutter/material.dart';
import 'package:login_page/components/my_login_button.dart';
import 'package:login_page/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void SignUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Image(image: AssetImage('lib/images/logoIGF.jpg')),
              ),
              const SizedBox(height: 50),
              Text(
                'Login Page',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              //USERNAME
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),

              //PASSWORD
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              //forgot password?
              SizedBox(
                width: 750,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        'forgot password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              MyButton(),
              const SizedBox(height: 100),

              const Align(
                alignment: Alignment.bottomCenter,
                child: Image(
                  image: AssetImage('lib/images/logo_orizzon.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
