import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var margin = 20;

    return Scaffold(
      appBar: AppBar(title: const Text("詳細")),
      body: Container(
        margin: EdgeInsets.all(margin.toDouble()),
        width: double.infinity,
        height: double.infinity,
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
      ),
    );
  }
}
