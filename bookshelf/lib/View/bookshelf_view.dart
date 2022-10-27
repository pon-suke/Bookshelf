import 'package:flutter/material.dart';

class BookshelfView extends StatelessWidget {
  const BookshelfView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var margin = 20;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("本棚")),
      body: Container(
        margin: EdgeInsets.all(margin.toDouble()),
        width: double.infinity,
        height: double.infinity,
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            for (int i = 0; i < 2; i++)
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    for (int j = 0; j < 3; j++) _books("本のタイトル", size),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _books(String label, Size size) {
    // return Container(
    //   width: 100,
    //   child: Image.asset('images/cover.jpg'),
    // );

    return Container(
      width: size.width * 0.25,
      decoration:
          BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(
              'images/cover.jpg',
            ),
          ),
          Text(label),
        ],
      ),
    );

    // return TextButton(
    //   style: TextButton.styleFrom(
    //     fixedSize: Size(
    //       size.width * 0.1,
    //       size.height * 0.2,
    //     ),
    //     backgroundColor: Colors.teal,
    //   ),
    //   onPressed: () {},
    //   child: Text(
    //     label,
    //     style: const TextStyle(color: Colors.white),
    //   ),
    // );
  }
}
