import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_tutorial/item_entity.dart';
import 'package:riverpod_tutorial/pagination/repository/product_repository.dart';


part 'controller.g.dart';


@riverpod
ProductController productController(ProductControllerRef ref) {
  final productRepository = ref.watch(productRepositoryProvider);
  return ProductController(productRepository: productRepository);
}

class ProductController{
  final ProductRepository _productRepository;

  ProductController({required ProductRepository productRepository}) : _productRepository = productRepository;

  Future<List<ItemEntity>?>loadProduts() async {
    final response = await _productRepository.getProducts(skip: 0);
    if(response != null){
      return response;
    }
    return [];
  }
}