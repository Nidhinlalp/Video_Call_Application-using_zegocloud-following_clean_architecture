import 'package:flutter/material.dart';
import 'package:videocall/core/style/colors.dart';
import 'package:videocall/features/auth/presentation/widgets/my_call.dart';

import '../../../auth/presentation/widgets/gradient_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Pallete.backgroundColor,
        automaticallyImplyLeading: false,
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientButton(
              hint: 'Join',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CallPage(callID: '1'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
