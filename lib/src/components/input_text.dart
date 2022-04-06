import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry margin;
  final TextInputType type;
  final bool hideContent;
  late InputBorder borderLine;

  InputText(
      {Key? key,
      this.label = "",
      this.margin = const EdgeInsets.all(0),
      this.type = TextInputType.text,
      this.hideContent = false,
      bool outline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        obscureText: hideContent,
        obscuringCharacter: "•",
        keyboardType: type,
        decoration: InputDecoration(label: Text(label)),
      ),
    );
  }
}
