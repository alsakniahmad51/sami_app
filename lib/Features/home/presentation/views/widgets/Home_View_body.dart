import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'Custom_App_Bar.dart';
import 'Featured_ListVire.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 24,
          ),
          Text(
            "Best Salery",
            style: Styles.titleMidium,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testimage),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
