import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/home_view.dart';
import 'package:mvvm_practise/Features/Splash/Presentation/Views/Widgets/sliding_text.dart';
import 'package:mvvm_practise/constants.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  // 0 --> 1
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initAnimSlide();
    navigateToPage();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    //This to prevent memory leaks
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 20),
        Sliding_text(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initAnimSlide() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

  void navigateToPage() {
    Future.delayed(kduration, () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kduration,
      );
    });
  }
}
