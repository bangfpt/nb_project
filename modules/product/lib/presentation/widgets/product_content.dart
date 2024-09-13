part of 'product_item.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({super.key, required this.item});
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 19),
        ),
        Text(
          "id: ${item.id}",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
        ),
        Text(
          "price: ${item.price}",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
        ),
        Text(
          "category: ${item.category}",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
        ),
        Text(
          "description: ${item.description}",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
        ),
      ].withSpaceBetween(height: 8),
    );
  }
}
