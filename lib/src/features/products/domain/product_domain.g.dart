// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDomain _$ProductDomainFromJson(Map<String, dynamic> json) =>
    ProductDomain(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      sku: json['sku'] as String,
      price: (json['price'] as num).toDouble(),
      brand: json['brand'] as String?,
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewDomain.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
