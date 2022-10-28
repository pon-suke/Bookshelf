import 'package:bookshelf/View/bookshelf_view.dart';
import 'package:flutter/material.dart';

class SelectBookshelfView extends StatelessWidget {
  const SelectBookshelfView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("本棚の選択")),
      body: Container(
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _bookshlefButton("本", context),
            _bookshlefButton("アニメ", context),
            _bookshlefButton("ゲーム", context),
          ],
        ),
      ),
    );
  }

  Widget _bookshlefButton(String label, BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size(
          size.width * 1,
          size.height * 0.2,
        ),
        backgroundColor: Colors.teal,
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const BookshelfView()));
      },
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
