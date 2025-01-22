import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/book_rating.dart';
import 'package:mvvm_practise/constants.dart';
import 'package:mvvm_practise/core/utils/app_router.dart';
import 'package:mvvm_practise/core/utils/assets.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetails);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              // width -> height
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.33,
                //MediaQuery.of(context).size is taking the width and the height of the device
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire ",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kFontFamily,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'J.k. Rowling',
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99\$",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
