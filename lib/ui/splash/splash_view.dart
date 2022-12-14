import 'package:flutter/material.dart';
import 'package:pos_mobile_app/ui/splash/splash_view_model.dart';
import 'package:pos_mobile_app/utils/colors.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewViewModel>.reactive(
      viewModelBuilder: () => SplashViewViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [linearFrom, linearTo],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/POS.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
