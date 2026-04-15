// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_categories_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(productsCategories)
final productsCategoriesProvider = ProductsCategoriesProvider._();

final class ProductsCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProductDomain>>,
          List<ProductDomain>,
          FutureOr<List<ProductDomain>>
        >
    with
        $FutureModifier<List<ProductDomain>>,
        $FutureProvider<List<ProductDomain>> {
  ProductsCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsCategoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<ProductDomain>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProductDomain>> create(Ref ref) {
    return productsCategories(ref);
  }
}

String _$productsCategoriesHash() =>
    r'61e595c2a6761c4dca4702a03633c18b37eec6fe';
