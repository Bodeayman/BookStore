import 'package:flutter/material.dart';
import 'package:mvvm_practise/constants.dart';
import 'package:mvvm_practise/core/utils/assets.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire ",
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                  style: Styles.textStyle20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
