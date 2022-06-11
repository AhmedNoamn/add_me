import 'dart:convert';

class BookModel {
  int? id;
  String? title;
  bool? isFree;
  double? price;

  BookModel({
    this.id,
    this.title,
    this.isFree,
    this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isFree': isFree,
      'price': price,
    };
  }

  BookModel.fromMap(Map<String, dynamic> map) {
    BookModel(
      id: map['id']?.toInt(),
      title: map['title'],
      isFree: map['isFree'],
      price: map['price']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());
}
