import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/products_model.dart';
import '../../params/product_params.dart';

part 'product_api.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET('/products')
  Future<List<ProductModel>> products();

  @POST('/products')
  Future<ProductModel> addNewProduct(@Body() ProductParams param);

  @PUT('/products/{productId}')
  Future<ProductModel> updateProduct(
    @Path('productId') num productId,
    @Body() ProductParams param,
  );

  @DELETE('/products/{productId}')
  Future<void> deleteProduct(
    @Path('productId') num productId,
  );
}
