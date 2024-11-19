// To parse this JSON data, do
//
//     final singleResProductAllMain = singleResProductAllMainFromJson(jsonString);

import 'dart:convert';

SingleResProductAllMain singleResProductAllMainFromJson(String str) =>
    SingleResProductAllMain.fromJson(json.decode(str));

String singleResProductAllMainToJson(SingleResProductAllMain data) =>
    json.encode(data.toJson());

class SingleResProductAllMain {
  bool? success;
  List<Product>? products;

  SingleResProductAllMain({
    this.success,
    this.products,
  });

  factory SingleResProductAllMain.fromJson(Map<String, dynamic> json) =>
      SingleResProductAllMain(
        success: json["success"],
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product {
  String? id;
  String? name;
  dynamic description;
  String? stockStatus;
  dynamic manufacturer;
  String? quantity;
  dynamic reviews;
  String? price;
  String? thumb;
  bool? special;
  int? rating;

  Product({
    this.id,
    this.name,
    this.description,
    this.stockStatus,
    this.manufacturer,
    this.quantity,
    this.reviews,
    this.price,
    this.thumb,
    this.special,
    this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        stockStatus: json["stock_status"],
        manufacturer: json["manufacturer"],
        quantity: json["quantity"],
        reviews: json["reviews"],
        price: json["price"],
        thumb: json["thumb"],
        special: json["special"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "stock_status": stockStatus,
        "manufacturer": manufacturer,
        "quantity": quantity,
        "reviews": reviews,
        "price": price,
        "thumb": thumb,
        "special": special,
        "rating": rating,
      };
}
