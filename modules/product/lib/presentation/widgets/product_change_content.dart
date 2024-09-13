part of 'product_item.dart';

class ProductChangeContent extends StatelessWidget {
  const ProductChangeContent({super.key, required this.item});
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        if (state.status == CommonStatus.loading) {
          EasyLoading.show();
        } else if (state.status == CommonStatus.failure) {
          EasyLoading.showError('Có lỗi xảy ra, vui lòng thử lại');
        } else {
          EasyLoading.dismiss();
        }
      },
      builder: (context, state) => ProductFormModelFormBuilder(
        builder: (context, formModel, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "id: ${item.id}",
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
            ),
            ReactiveTextField(
              formControl: formModel.titleControl,
              decoration: InputDecoration(hintText: item.title),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 19),
            ),
            ReactiveTextField(
              formControl: formModel.priceControl,
              decoration: InputDecoration(hintText: item.price.toString()),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16),
            ),
            ReactiveTextField(
              formControl: formModel.categoryControl,
              decoration: InputDecoration(hintText: item.category),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16),
            ),
            ReactiveTextField(
              formControl: formModel.descriptionControl,
              decoration: InputDecoration(hintText: item.description),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16),
            ),
            ReactiveProductFormModelFormConsumer(
              builder: (context, formModel, child) => GradientElevatedButton(
                onPressed: () =>
                    handleSubmit(context, item.id, formModel, item),
                style: GradientElevatedButton.styleFrom(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 71, 176, 184),
                      Color.fromARGB(255, 50, 105, 224),
                    ],
                  ),
                ),
                child: const Text(
                  'Save change',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ].withSpaceBetween(height: 8),
        ),
      ),
    );
  }

  void handleSubmit(
    BuildContext context,
    num id,
    ProductFormModelForm formModel,
    ProductModel item,
  ) {
    final param = ProductParams(
      formModel.titleControl?.value ?? item.title,
      formModel.priceControl?.value ?? item.price,
      formModel.categoryControl?.value ?? item.category,
      formModel.descriptionControl?.value ?? item.description,
      formModel.imageControl?.value ?? item.image,
    );
    context.read<ProductsCubit>().editProduct(id, param);
  }
}
