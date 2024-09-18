import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/presentation/cubit/products_cubit.dart';
import 'package:product/presentation/widgets/product_item.dart';
import 'package:auth/presentation/screen/auth/cubit/auth_cubit.dart';

class ProductScreen extends StatefulWidget implements AutoRouteWrapper {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.instance.get<ProductsCubit>());
  }
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    context.read<ProductsCubit>().products();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          actions: [
            IconButton(
              onPressed: () => context.read<AuthCubit>().signOut(context),
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              shrinkWrap: true,
              itemCount: state.listProducts.length,
              itemBuilder: (context, index) => ProductItem(
                item: state.listProducts[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
