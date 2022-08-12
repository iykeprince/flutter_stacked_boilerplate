import 'package:flutter/material.dart';

class LauncherView extends StatelessWidget {
  const LauncherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'POS APP',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
