import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/book_actions_buttons.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_book_image.dart';
import 'package:mvvm_practise/constants.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

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
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(
              fontFamily: kFontFamily,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}



//Sometimes you should use SafeArea because it will prevent the Notificaiton bar problems
// in our program