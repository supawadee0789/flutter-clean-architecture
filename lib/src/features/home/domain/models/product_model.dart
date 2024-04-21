import 'package:json_annotation/json_annotation.dart';
import 'category_model.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  DateTime? creationAt;
  DateTime? updatedAt;
  CategoryModel? category;
  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
    this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  static List<ProductModel> fromJsonList(List json) {
    return json.map((e) => ProductModel.fromJson(e)).toList();
  }
}
