import 'package:flutter/material.dart';
import 'package:product/data/models/products_model.dart';
import 'package:core/core/extensions/widget_ext.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
  });
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 19),
          ),
          Text(
            "id: ${item.id}",
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
          ),
          Text(
            "price: ${item.price}",
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
          ),
          Text(
            "category: ${item.category}",
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
          ),
          Text(
            "description: ${item.description}",
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
          ),
        ].withSpaceBetween(height: 8),
      ),
    );
  }
}
