import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:product/presentation/cubit/products_cubit.dart';
import 'package:product/presentation/widgets/product_item.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final cubit = GetIt.I<ProductsCubit>();
  @override
  void initState() {
    cubit.products();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) => Scaffold(
        body: Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.listProducts.length,
            itemBuilder: (context, index) => ProductItem(
              item: state.listProducts[index],
            ),
          ),
        ),
      ),
    );
  }
}
