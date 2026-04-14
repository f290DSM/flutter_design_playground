import 'dart:convert';
import 'dart:core';

import 'package:flutter_design_playground/src/domain/review_domain.dart';

class ProductDomain {
  final int id;
  final String title;
  final String description;
  final String sku;
  final double price;
  String? brand;
  final String category;
  final String thumbnail;
  final List<String> images;
  final List<ReviewDomain> reviews;
  
  ProductDomain({
    required this.id,
    required this.title,
    required this.description,
    required this.sku,
    required this.price,
    this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
    required this.reviews,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'sku': sku,
      'price': price,
      'brand': brand,
      'category': category,
      'thumbnail': thumbnail,
      'images': images,
      'reviews': reviews.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductDomain.fromJson(Map<String, dynamic> map) {
    return ProductDomain(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      sku: map['sku'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      brand: map['brand'],
      category: map['category'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
      images: List<String>.from(map['images']),
      reviews: List<ReviewDomain>.from(map['reviews']?.map((x) => ReviewDomain.fromJson(x))),
    );
  }

  String toJson() => json.encode(toMap());
}

/**
 * {
      "id": 6,
      "title": "Calvin Klein CK One",
      "description": "CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It's a versatile fragrance suitable for everyday wear.",
      "category": "fragrances",
      "price": 49.99,
      "discountPercentage": 1.89,
      "rating": 4.37,
      "stock": 29,
      "tags": [
        "fragrances",
        "perfumes"
      ],
      "brand": "Calvin Klein",
      "sku": "FRA-CAL-CAL-006",
      "weight": 7,
      "dimensions": {
        "width": 29.36,
        "height": 27.76,
        "depth": 20.72
      },
      "warrantyInformation": "1 week warranty",
      "shippingInformation": "Ships overnight",
      "availabilityStatus": "In Stock",
      "reviews": [
        {
          "rating": 2,
          "comment": "Very disappointed!",
          "date": "2025-04-30T09:41:02.053Z",
          "reviewerName": "Layla Young",
          "reviewerEmail": "layla.young@x.dummyjson.com"
        },
        {
          "rating": 4,
          "comment": "Fast shipping!",
          "date": "2025-04-30T09:41:02.053Z",
          "reviewerName": "Daniel Cook",
          "reviewerEmail": "daniel.cook@x.dummyjson.com"
        },
        {
          "rating": 3,
          "comment": "Not as described!",
          "date": "2025-04-30T09:41:02.053Z",
          "reviewerName": "Jacob Cooper",
          "reviewerEmail": "jacob.cooper@x.dummyjson.com"
        }
      ],
      "returnPolicy": "90 days return policy",
      "minimumOrderQuantity": 9,
      "meta": {
        "createdAt": "2025-04-30T09:41:02.053Z",
        "updatedAt": "2025-04-30T09:41:02.053Z",
        "barcode": "2451534060749",
        "qrCode": "https://cdn.dummyjson.com/public/qr-code.png"
      },
      "images": [
        "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/1.webp",
        "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/2.webp",
        "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/3.webp"
      ],
      "thumbnail": "https://cdn.dummyjson.com/product-images/fragrances/calvin-klein-ck-one/thumbnail.webp"
    }
 */
