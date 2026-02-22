
import 'package:ShopSphere/common/widgets/space/space.dart';
import 'package:ShopSphere/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/widgets/appbar/appbar.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const SAppBar(showBackArrow: true, title: Text("Add new Address")),
      backgroundColor:
      SHelperFunctions.isDarkMode(context) ? SColors.black : SColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: "Name")),
                const SpaceBetweenInputFields(height: true,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: "Phone Number")),
                const SpaceBetweenInputFields(height: true,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: "Street"))),
                    const SpaceBetweenInputFields(height: false,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: "Postal Code"))),
                  ],
                ),
                const SpaceBetweenInputFields(height: true,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: "City"))),
                    const SpaceBetweenInputFields(height: false,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: "State"))),
                  ],
                ),
                const SpaceBetweenInputFields(height: true),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: "Country")),
                const DefaultSpace(height: true),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text("Save")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
