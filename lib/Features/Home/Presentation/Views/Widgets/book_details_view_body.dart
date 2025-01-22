import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}


//Sometimes you should use SafeArea because it will prevent the Notificaiton bar problems
// in our program