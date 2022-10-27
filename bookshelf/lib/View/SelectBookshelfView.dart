import 'package:flutter/material.dart';

class SelectBookshelfView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("SelectBookShelfView")
      ),
      body : Center(
        child: TextButton(
          child: const Text("mainに戻る"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}