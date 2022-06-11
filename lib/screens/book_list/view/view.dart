import 'package:add_me/controller/storage/app_storage.dart';
import 'package:add_me/screens/add_book/view/view.dart';
import 'package:add_me/screens/edit_book/view/view.dart';
import 'package:flutter/material.dart';

class BookListView extends StatefulWidget {
  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: AppStorage.getBook().length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey.withOpacity(0.4),
          child: ListTile(
            title: Text(AppStorage.getBook()[index]),
            onTap: () async {
              final result = await Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateBook(
                      oldBook: AppStorage.getBook()[index], index: index),
                ),
              );
              if (result != null) {
                setState(() {});
              }
            },
            onLongPress: () {
              AppStorage.deleteBook(index);
              setState(() {});
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final result = await Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => AddBookView()));
          if (result != null) {
            setState(() {});
          }
        },
      ),
    );
  }
}
