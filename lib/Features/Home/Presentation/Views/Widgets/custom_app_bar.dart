import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          // I think that the spacer will leave a space between them like between
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
