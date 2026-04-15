import 'dart:convert';

class CategoryDomain {
  final String slug;
  final String name;
  final String url;

  CategoryDomain({required this.slug, required this.name, required this.url});

  Map<String, dynamic> toMap() {
    return {
      'slug': slug,
      'name': name,
      'url': url,
    };
  }

  factory CategoryDomain.fromJson(Map<String, dynamic> map) {
    return CategoryDomain(
      slug: map['slug'] ?? '',
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

}