import 'package:ShopSphere/common/widgets/appbar/appbar.dart';
import 'package:ShopSphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ShopSphere/features/personalization/address/add_new_address.dart';
import 'package:ShopSphere/features/personalization/address/widgets/single_address.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(showBackArrow: true, title: Text("Addresses", style: Theme.of(context).textTheme.headlineSmall)),
      backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.black : SColors.white,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(() => const AddNewAddress());
      },
      backgroundColor: SColors.primary,
      child: const Icon(Iconsax.add, color: SColors.white,),),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          children: [
            SSingleAddress(selectedAddress: true),
            SSingleAddress(selectedAddress: false)
          ],
        ),
      ),
    );
  }
}
