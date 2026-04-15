import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return Dio(BaseOptions(baseUrl: 'https://dummyjson.com'));
}