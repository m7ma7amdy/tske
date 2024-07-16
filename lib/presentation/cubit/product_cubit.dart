import 'package:bloc/bloc.dart';
import 'package:flutter_product_list/data/models/product.dart';
import 'package:flutter_product_list/data/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepository _repository;

  ProductCubit(this._repository) : super(ProductInitial());

  void fetchProducts() async {
    try {
      emit(ProductLoading());
      final products = await _repository.fetchProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
