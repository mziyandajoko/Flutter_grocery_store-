import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GroceryModel {
  int? id;
  String? name;
  String? description;
  double? price;
  String? imageUrl;

  GroceryModel(
      {this.id, this.name, this.description, this.price, this.imageUrl});

  GroceryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
