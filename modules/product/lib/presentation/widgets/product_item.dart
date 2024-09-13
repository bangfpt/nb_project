import 'package:core/core/const/status_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/data/models/products_model.dart';
import 'package:core/core/extensions/widget_ext.dart';
import 'package:product/presentation/cubit/products_cubit.dart';
import 'package:product/presentation/form_model/product_form_model.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../data/params/product_params.dart';

part 'product_content.dart';
part 'product_change_content.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.item,
  });
  final ProductModel item;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool showAction = false;
  bool editAction = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        showAction = !showAction;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            !editAction
                ? ProductContent(
                    item: widget.item,
                  )
                : ProductChangeContent(item: widget.item),
            !showAction
                ? const SizedBox.shrink()
                : Row(
                    children: [
                      IconButton(
                        onPressed: () => setState(() {
                          editAction = !editAction;
                        }),
                        icon: const Column(
                          children: [
                            Icon(Icons.edit_outlined),
                            Text(
                              'edit',
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Column(
                          children: [
                            Icon(Icons.delete),
                            Text(
                              'delete',
                            )
                          ],
                        ),
                      )
                    ],
                  )
          ].withSpaceBetween(height: 8),
        ),
      ),
    );
  }
}
