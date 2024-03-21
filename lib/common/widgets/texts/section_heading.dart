
import 'package:flutter/material.dart';

class SSectionHeading extends StatelessWidget {
  const SSectionHeading({
    super.key, this.buttonText = "View all", required this.title, this.textColor, this.showActionButton = false, this.onPressed,
  });

  final String buttonText, title;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}