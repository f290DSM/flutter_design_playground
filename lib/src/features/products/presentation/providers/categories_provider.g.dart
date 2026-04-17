// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(category)
final categoryProvider = CategoryProvider._();

final class CategoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CategoryDomain>>,
          List<CategoryDomain>,
          FutureOr<List<CategoryDomain>>
        >
    with
        $FutureModifier<List<CategoryDomain>>,
        $FutureProvider<List<CategoryDomain>> {
  CategoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryHash();

  @$internal
  @override
  $FutureProviderElement<List<CategoryDomain>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CategoryDomain>> create(Ref ref) {
    return category(ref);
  }
}

String _$categoryHash() => r'f78b856b654a87d795a3c988720a4ad55a623643';
