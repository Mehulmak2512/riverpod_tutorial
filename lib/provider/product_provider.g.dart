// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productHash() => r'b9306235eaed06cf979523d4edc0b6e4e5c9edaf';

/// generated provider
///
/// Copied from [product].
@ProviderFor(product)
final productProvider = AutoDisposeProvider<List<Product>>.internal(
  product,
  name: r'productProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductRef = AutoDisposeProviderRef<List<Product>>;
String _$reducedProductHash() => r'8371ee720809ce67837f715e03d12aedb0359c37';

/// See also [reducedProduct].
@ProviderFor(reducedProduct)
final reducedProductProvider = AutoDisposeProvider<List<Product>>.internal(
  reducedProduct,
  name: r'reducedProductProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$reducedProductHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ReducedProductRef = AutoDisposeProviderRef<List<Product>>;
String _$cartProductHash() => r'207d14c65cb92c0f8b0ab7c4b0566a7e33f19134';

/// See also [CartProduct].
@ProviderFor(CartProduct)
final cartProductProvider =
    AutoDisposeNotifierProvider<CartProduct, List<Product>>.internal(
  CartProduct.new,
  name: r'cartProductProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartProductHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartProduct = AutoDisposeNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
