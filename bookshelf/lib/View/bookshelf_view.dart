import 'package:flutter/material.dart';
import 'package:bookshelf/View/input_view.dart';
import 'package:bookshelf/View/details_view.dart';

class BookshelfView extends StatelessWidget {
  const BookshelfView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var margin = 20;
    var books_num = 4;
    var books_row_num = 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text("本棚"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const InputView()));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(margin.toDouble()),
        width: double.infinity,
        height: double.infinity,
        decoration:
            BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            for (int i = 0; i < books_num / books_row_num; i++)
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                decoration: BoxDecoration(
                    color: Colors.white, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    for (int j = 0; j < books_row_num; j++) ...{
                      if (i * books_row_num + j + 1 <= books_num) ...{
                        _books("本のタイトル", context, books_row_num),
                      } else ...{
                        _noBooks(context, books_row_num),
                      }
                    }
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _books(String label, BuildContext context, int books_row_num) {
    // return Container(
    //   width: 100,
    //   child: Image.asset('images/cover.jpg'),
    // );
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const DetailsView()));
      },
      child: Container(
        width: size.width * (1 / (books_row_num + 1)),
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
      ),
    );
  }
}

Widget _noBooks(BuildContext context, int books_row_num) {
  var size = MediaQuery.of(context).size;

  return Container(
    width: size.width * (1 / (books_row_num + 1)),
    decoration:
        BoxDecoration(color: Colors.white, border: Border.all(width: 1)),
  );
}
