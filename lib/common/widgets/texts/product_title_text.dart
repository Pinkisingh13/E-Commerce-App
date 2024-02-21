import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
     required this.title,
     this.isSmallSize = false,
     this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool isSmallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: isSmallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall ,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
