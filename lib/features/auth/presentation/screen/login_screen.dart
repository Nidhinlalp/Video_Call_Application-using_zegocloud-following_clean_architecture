import 'package:flutter/material.dart';

import '../../../home/presentation/screen/my_home.dart';
import '../widgets/gradient_button.dart';
import '../widgets/login_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String name = '';
  static String id = '';
  static final TextEditingController nameControler = TextEditingController();
  static final TextEditingController idControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const Text(
                  'Start.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 150),
                const SizedBox(height: 15),
                LoginField(hintText: 'Name', controller: nameControler),
                const SizedBox(height: 15),
                LoginField(hintText: 'Id', controller: idControler),
                const SizedBox(height: 20),
                GradientButton(
                  hint: 'Start',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
