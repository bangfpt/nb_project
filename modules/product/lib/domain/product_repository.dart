import '../data/models/products_model.dart';
import '../data/params/product_params.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> products();

  Future<ProductModel> addNewProduct(ProductParams param);

  Future<ProductModel> updateProduct(num productId, ProductParams param);

  Future<void> deleteProduct(num productId);
}
