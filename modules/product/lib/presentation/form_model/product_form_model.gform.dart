// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'product_form_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProductFormModelFormConsumer extends StatelessWidget {
  const ReactiveProductFormModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ProductFormModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductFormModelForm.of(context);

    if (formModel is! ProductFormModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProductFormModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ProductFormModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProductFormModelForm form;
}

class ReactiveProductFormModelForm extends StatelessWidget {
  const ReactiveProductFormModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ProductFormModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ProductFormModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProductFormModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProductFormModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProductFormModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProductFormModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveProductFormModelFormExt on BuildContext {
  ProductFormModelForm? productFormModelFormWatch() =>
      ReactiveProductFormModelForm.of(this);

  ProductFormModelForm? productFormModelFormRead() =>
      ReactiveProductFormModelForm.of(this, listen: false);
}

class ProductFormModelFormBuilder extends StatefulWidget {
  const ProductFormModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProductFormModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, ProductFormModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ProductFormModelForm formModel)?
      initState;

  @override
  _ProductFormModelFormBuilderState createState() =>
      _ProductFormModelFormBuilderState();
}

class _ProductFormModelFormBuilderState
    extends State<ProductFormModelFormBuilder> {
  late ProductFormModelForm _formModel;

  @override
  void initState() {
    _formModel = ProductFormModelForm(
        ProductFormModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductFormModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveProductFormModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ProductFormModelForm implements FormModel<ProductFormModel> {
  ProductFormModelForm(
    this.form,
    this.path,
  );

  static const String titleControlName = "title";

  static const String categoryControlName = "category";

  static const String descriptionControlName = "description";

  static const String imageControlName = "image";

  static const String priceControlName = "price";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String titleControlPath() => pathBuilder(titleControlName);

  String categoryControlPath() => pathBuilder(categoryControlName);

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String imageControlPath() => pathBuilder(imageControlName);

  String priceControlPath() => pathBuilder(priceControlName);

  String? get _titleValue => titleControl?.value;

  String? get _categoryValue => categoryControl?.value;

  String? get _descriptionValue => descriptionControl?.value;

  String? get _imageValue => imageControl?.value;

  num? get _priceValue => priceControl?.value;

  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCategory {
    try {
      form.control(categoryControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsImage {
    try {
      form.control(imageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPrice {
    try {
      form.control(priceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get titleErrors => titleControl?.errors;

  Map<String, Object>? get categoryErrors => categoryControl?.errors;

  Map<String, Object>? get descriptionErrors => descriptionControl?.errors;

  Map<String, Object>? get imageErrors => imageControl?.errors;

  Map<String, Object>? get priceErrors => priceControl?.errors;

  void get titleFocus => form.focus(titleControlPath());

  void get categoryFocus => form.focus(categoryControlPath());

  void get descriptionFocus => form.focus(descriptionControlPath());

  void get imageFocus => form.focus(imageControlPath());

  void get priceFocus => form.focus(priceControlPath());

  void titleRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTitle) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          titleControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            titleControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void categoryRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCategory) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          categoryControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            categoryControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void descriptionRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDescription) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          descriptionControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            descriptionControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void imageRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsImage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          imageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            imageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void priceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPrice) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          priceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            priceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void titleValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoryValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoryControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValueUpdate(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoryValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoryControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void priceValuePatch(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    priceControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      titleControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void categoryValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoryControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void descriptionValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void imageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imageControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void priceValueReset(
    num? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      priceControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get titleControl => containsTitle
      ? form.control(titleControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get categoryControl => containsCategory
      ? form.control(categoryControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get descriptionControl => containsDescription
      ? form.control(descriptionControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get imageControl => containsImage
      ? form.control(imageControlPath()) as FormControl<String>?
      : null;

  FormControl<num>? get priceControl => containsPrice
      ? form.control(priceControlPath()) as FormControl<num>?
      : null;

  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void categorySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoryControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoryControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void imageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imageControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imageControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void priceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      priceControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      priceControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ProductFormModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'ProductFormModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ProductFormModel(
        title: _titleValue,
        category: _categoryValue,
        description: _descriptionValue,
        image: _imageValue,
        price: _priceValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(ProductFormModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ProductFormModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProductFormModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ProductFormModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ProductFormModel? productFormModel) =>
      FormGroup({
        titleControlName: FormControl<String>(
            value: productFormModel?.title,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        categoryControlName: FormControl<String>(
            value: productFormModel?.category,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        descriptionControlName: FormControl<String>(
            value: productFormModel?.description,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        imageControlName: FormControl<String>(
            value: productFormModel?.image,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        priceControlName: FormControl<num>(
            value: productFormModel?.price,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveProductFormModelFormArrayBuilder<
    ReactiveProductFormModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveProductFormModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveProductFormModelFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProductFormModelFormArrayBuilderT>? Function(
      ProductFormModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProductFormModelFormArrayBuilderT? item,
      ProductFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProductFormModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveProductFormModelFormFormGroupArrayBuilder<
        ReactiveProductFormModelFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveProductFormModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveProductFormModelFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveProductFormModelFormFormGroupArrayBuilderT>>
      Function(ProductFormModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductFormModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProductFormModelFormFormGroupArrayBuilderT? item,
      ProductFormModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductFormModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveProductFormModelFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
