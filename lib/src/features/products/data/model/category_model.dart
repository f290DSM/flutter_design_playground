import 'package:flutter_design_playground/src/features/products/domain/entities/category_domain.dart';

class CategoryModel extends CategoryDomain {
  CategoryModel({
    required super.slug,
    required super.name,
    required super.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'slug': slug,
      'name': name,
      'url': url,
    };
  }

  factory CategoryModel.fromJson(Map<String, dynamic> map) {
    return CategoryModel(
      slug: map['slug'] ?? '',
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  CategoryDomain toEntity() {
    return CategoryDomain(
      slug: slug,
      name: name,
      url: url,
    );
  }
}
