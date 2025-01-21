import 'package:flutter/material.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 20),
          const Text(
            "Read Free Books",
            textAlign: TextAlign.center,
          )
        ]);
  }
}
