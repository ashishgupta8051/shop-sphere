import 'package:ShopSphere/features/shop/screens/product_review/widgets/progress_rating_and_indicator.dart';
import 'package:flutter/material.dart';

class SOverallProductRating extends StatelessWidget {
  const SOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text('4.8',
                style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(children: [
            SRatingProgressIndicator(text: "5", value: 10),
            SRatingProgressIndicator(text: "4", value: 0.8),
            SRatingProgressIndicator(text: "3", value: 0.6),
            SRatingProgressIndicator(text: "2", value: 0.5),
            SRatingProgressIndicator(text: "1", value: 0.2),
          ]),
        )
      ],
    );
  }
}
