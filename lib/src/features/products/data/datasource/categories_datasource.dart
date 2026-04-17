import 'package:dio/dio.dart';
import 'package:flutter_design_playground/src/features/products/data/model/category_model.dart';

abstract interface class CategoriesDatasource {
  Future<List<CategoryModel>> getCategories();
}

class CategoriesDatasourceImpl implements CategoriesDatasource {
  final Dio dio;

  CategoriesDatasourceImpl({required this.dio});

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await dio.get('/products/categories');
    return [for (final c in response.data) CategoryModel.fromJson(c)];
  }
}
