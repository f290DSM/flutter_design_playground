import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/features/products/domain/product_domain.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductDomain;
    final sizeOf = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: ListView(
        children: [
          SizedBox(
            height: sizeOf.height * 0.3,
            child: CarouselView.weighted(
              flexWeights: [1, 7, 1],
              children: product.images
                  .map((img) => Image.network(img))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Text(
              product.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Text(product.description),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: Text(
              "Reviews",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ...product.reviews.map(
            (review) => ListTile(
              leading: Icon(Icons.person),
              title: Text(review.reviewerName),
              subtitle: Text(review.comment),
              trailing: Text.rich(
                TextSpan(
                  text: 'Nota: ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: review.rating.toString(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
