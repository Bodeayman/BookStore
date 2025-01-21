import 'package:flutter/material.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(AssetsData.logo),
    ]);
  }
}
