import 'package:get_storage/get_storage.dart';

abstract class AppStorage {
  static String _Box = 'book';
  static GetStorage _box = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static List getBook() => _box.hasData(_Box) ? _box.read(_Box) : [];
  static void _updateBook(List book) => _box.write(_Box, book);

//adding book
  static Future addBook(String value) async {
    final book = getBook();
    book.insert(0, value);
    await _box.write(_Box, book);
  }

//update book
  static updateBook(int index, String note) {
    final book = getBook();
    book[index] = note;
    _updateBook(book);
  }

//delete book
  static Future deleteBook(int index) async {
    final book = getBook();
    book.removeAt(index);
    _updateBook(book);
  }
}
