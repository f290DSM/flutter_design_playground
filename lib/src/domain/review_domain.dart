import 'dart:convert';

class ReviewDomain {
    final String reviewerName;
    final String reviewerEmail;
    final String comment;
    final int rating;
    
  ReviewDomain({
    required this.reviewerName,
    required this.reviewerEmail,
    required this.comment,
    required this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'reviewerName': reviewerName,
      'reviewerEmail': reviewerEmail,
      'comment': comment,
      'rating': rating,
    };
  }

  factory ReviewDomain.fromMap(Map<String, dynamic> map) {
    return ReviewDomain(
      reviewerName: map['reviewerName'] ?? '',
      reviewerEmail: map['reviewerEmail'] ?? '',
      comment: map['comment'] ?? '',
      rating: map['rating']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReviewDomain.fromJson(String source) => ReviewDomain.fromMap(json.decode(source));
}
