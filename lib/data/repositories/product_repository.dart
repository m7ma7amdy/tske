import 'package:dio/dio.dart';
import 'package:flutter_product_list/data/models/product.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductRepository {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    final response = await _dio.get('https://dummyjson.com/products');
    if (response.statusCode == 200) {
      final List products = response.data['products'];
      return products.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
