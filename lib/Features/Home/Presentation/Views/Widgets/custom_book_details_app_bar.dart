import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_practise/core/utils/app_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.close, size: 20),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KHomeView);
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, size: 20),
          onPressed: () {},
        )
      ],
    );
  }
}
