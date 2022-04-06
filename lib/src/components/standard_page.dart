import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget {
  final List<Widget> children;
  final String? appBarTitle;

  const StandardPage({Key? key, required this.children, this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle != null
          ? AppBar(title: Text(appBarTitle!), centerTitle: true)
          : null,
      body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: appBarTitle != null ? 30 : 60,
            right: 30,
            bottom: 30,
            left: 30,
          ),
          child: Column(
            children: children,
          )),
    );
  }
}
