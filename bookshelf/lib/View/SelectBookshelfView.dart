import 'package:flutter/material.dart';

class SelectBookshelfView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("SelectBookShelfView")
      ),
      body : Center(
        child: TextButton(
          child: Text("mainに戻る"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}