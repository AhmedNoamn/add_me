import 'package:add_me/controller/storage/app_storage.dart';
import 'package:add_me/screens/book_list/view/view.dart';
import 'package:add_me/widgets/button.dart';
import 'package:flutter/material.dart';

class AddBookView extends StatefulWidget {
  const AddBookView({this.oldBook, this.index});

  final String? oldBook;
  final int? index;
  @override
  _AddBookViewState createState() => _AddBookViewState();
}

class _AddBookViewState extends State<AddBookView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController noteController = TextEditingController();
  @override
  void initState() {
    if (widget.oldBook != null)
      noteController = TextEditingController(text: widget.oldBook);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
                key: formKey,
                child: TextFormField(
                  controller: noteController,
                  validator: (value) => value!.isEmpty ? 'invalid Input' : null,
                  decoration: InputDecoration(
                    hintText: 'Add Book',
                  ),
                )),
            SizedBox(height: 30),
            CustomButton(
              label: 'Add',
              onTap: () async {
                if (!formKey.currentState!.validate()) return;
                if (widget.oldBook == null) {
                  await AppStorage.addBook(noteController.text);
                  print('added');
                } else {
                  // await AppStorage.updateBook(
                  //     widget.index!, noteController.text);
                }
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BookListView(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
