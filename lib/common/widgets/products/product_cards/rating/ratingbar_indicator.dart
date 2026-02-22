import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class SRatingBarIndicator extends StatelessWidget {
  const SRatingBarIndicator({
    super.key, required this.rating
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating, // The rating to display
      itemBuilder: (_, __) =>  const Icon(
        Iconsax.star1, // Use any icon you prefer
        color: SColors.primary,
      ),
      itemSize: 20, // Size of each icon
    );
  }
}