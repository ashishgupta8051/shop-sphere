

import 'package:ShopSphere/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class SShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color:  SColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color:  SColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}