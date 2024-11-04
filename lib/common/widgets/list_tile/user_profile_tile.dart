import 'package:ShopSphere/features/personalization/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/s_circular_image.dart';

class SUserProfileTile extends StatelessWidget {
  const SUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SCircularImage(
        imageUrl: SImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Ashish Gupta", style: Theme.of(context).textTheme.headlineSmall!.apply(color: SColors.white),),
      subtitle: Text("ashishgupta6@gmal.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: SColors.white),),
      trailing: IconButton(onPressed: (){
        Get.to(() => const Profile());
      }, icon: const Icon(Iconsax.edit, color: SColors.white)),
    );
  }
}