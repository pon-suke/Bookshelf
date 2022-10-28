import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var margin = 20;

    return Scaffold(
        appBar: AppBar(title: const Text("詳細")),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(margin.toDouble()),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(width: 1)),
            child: Column(children: <Widget>[
              _information("タイトル", "ハンターハンター"),
              _information("著者", "冨樫義博"),
            ]),
          ),
        ));
  }

  Widget _information(String title, String book_title) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title),
            Text(
              book_title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
