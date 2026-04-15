// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeDomain _$RecipeDomainFromJson(Map<String, dynamic> json) => RecipeDomain(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  instructions: (json['instructions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  mealType: (json['mealType'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  prepTimeMinutes: (json['prepTimeMinutes'] as num).toInt(),
  cookTimeMinutes: (json['cookTimeMinutes'] as num).toInt(),
  intservings: (json['intservings'] as num).toInt(),
  difficulty: (json['difficulty'] as num).toInt(),
  cuisine: json['cuisine'] as String,
  caloriesPerServing: (json['caloriesPerServing'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  image: json['image'] as String,
  rating: (json['rating'] as num).toInt(),
  reviewCount: (json['reviewCount'] as num).toInt(),
);
