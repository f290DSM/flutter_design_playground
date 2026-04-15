import 'package:json_annotation/json_annotation.dart';

part 'recipe_domain.g.dart';

@JsonSerializable(createToJson: false)
class RecipeDomain {
  final int id;
  final String name;
  final List<String> ingredients;
  final List<String> instructions;
  final List<String> tags;
  final List<String> mealType;
  final int prepTimeMinutes;
  final int cookTimeMinutes;
  final int intservings;
  final int difficulty;
  final String cuisine;
  final int caloriesPerServing;
  final int userId;
  final String image;
  final int rating;
  final int reviewCount;

  RecipeDomain({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.tags,
    required this.mealType,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.intservings,
    required this.difficulty,
    required this.cuisine,
    required this.caloriesPerServing,
    required this.userId,
    required this.image,
    required this.rating,
    required this.reviewCount,
  });

  factory RecipeDomain.fromJson(Map<String, dynamic> json) => _$RecipeDomainFromJson(json);
}

/**
 * 
 * {
      "id": 11,
      "name": "Chicken Biryani",
      "ingredients": [
        "Basmati rice",
        "Chicken, cut into pieces",
        "Onions, thinly sliced",
        "Tomatoes, chopped",
        "Yogurt",
        "Ginger-garlic paste",
        "Biryani masala",
        "Green chilies, sliced",
        "Fresh coriander leaves",
        "Mint leaves",
        "Ghee",
        "Salt to taste"
      ],
      "instructions": [
        "Marinate chicken with yogurt, ginger-garlic paste, biryani masala, and salt.",
        "In a pot, sauté sliced onions until golden brown. Remove half for later use.",
        "Layer marinated chicken, chopped tomatoes, half of the fried onions, and rice in the pot.",
        "Top with ghee, green chilies, fresh coriander leaves, mint leaves, and the remaining fried onions.",
        "Cover and cook on low heat until the rice is fully cooked and aromatic.",
        "Serve hot, garnished with additional coriander and mint leaves."
      ],
      "prepTimeMinutes": 30,
      "cookTimeMinutes": 45,
      "servings": 6,
      "difficulty": "Medium",
      "cuisine": "Pakistani",
      "caloriesPerServing": 550,
      "tags": [
        "Biryani",
        "Chicken",
        "Main course",
        "Indian",
        "Pakistani",
        "Asian"
      ],
      "userId": 133,
      "image": "https://cdn.dummyjson.com/recipe-images/11.webp",
      "rating": 5,
      "reviewCount": 32,
      "mealType": [
        "Lunch",
        "Dinner"
      ]
    }
 */
