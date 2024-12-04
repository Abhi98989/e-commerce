
import 'package:flutter/material.dart';

class SectionHeadScreen extends StatelessWidget {
  const SectionHeadScreen({
    super.key, this.textcolor,  this.showActionButton=true, required this.text,  this.buttonTitle='View all', this.onPressed,
  });

  final Color? textcolor;
  final bool showActionButton;
  final String text, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Theme.of(context).textTheme.headlineMedium!.apply(color: textcolor),maxLines: 1,overflow: TextOverflow.ellipsis,),
       if(showActionButton) TextButton(onPressed: onPressed, child:Text(buttonTitle, style: Theme.of(context).textTheme.labelLarge))
      ],
    );
  }
}