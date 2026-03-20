import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SpaceBetweenItems extends StatelessWidget {
  const SpaceBetweenItems({super.key, required this.height,});

  final bool height;


  @override
  Widget build(BuildContext context) {
    if(height){
      return const SizedBox(height: SSizes.spaceBtwItems);
    }else{
      return const SizedBox(width: SSizes.spaceBtwItems);
    }
  }
}

class SpaceBetweenItemsDivByTwo extends StatelessWidget {
  const SpaceBetweenItemsDivByTwo({super.key, required this.height,});

  final bool height;


  @override
  Widget build(BuildContext context) {
    if(height){
      return const SizedBox(height: SSizes.spaceBtwItems / 2);
    }else{
      return const SizedBox(width: SSizes.spaceBtwItems / 2);
    }
  }
}

class DefaultSpace extends StatelessWidget {
  const DefaultSpace({super.key, required this.height,});

  final bool height;


  @override
  Widget build(BuildContext context) {
    if(height){
      return const SizedBox(height: SSizes.defaultSpace);
    }else{
      return const SizedBox(width: SSizes.defaultSpace);
    }
  }
}


class SpaceBetweenSections extends StatelessWidget {
  const SpaceBetweenSections({super.key, required this.height});

  final bool height;


  @override
  Widget build(BuildContext context) {
    if(height){
      return const SizedBox(height: SSizes.spaceBtwSections);
    }else{
      return const SizedBox(width: SSizes.spaceBtwSections);
    }
  }
}

class SpaceBetweenInputFields extends StatelessWidget {
  const SpaceBetweenInputFields({super.key, required this.height});

  final bool height;

  @override
  Widget build(BuildContext context) {
    if(height){
      return const SizedBox(height: SSizes.spaceBtwInputFields);
    }else{
      return const SizedBox(width: SSizes.spaceBtwInputFields);
    }
  }
}