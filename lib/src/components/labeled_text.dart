import 'package:flutter/material.dart';

class LabeledText extends StatelessWidget {
  final String label;
  final String text;
  EdgeInsets padding;

  LabeledText(
      {Key? key,
      required this.label,
      required this.text,
      this.padding = const EdgeInsets.symmetric(vertical: 5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: Row(children: [
          Text(label,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.bold)),
          Text(text)
        ]));
  }
}
