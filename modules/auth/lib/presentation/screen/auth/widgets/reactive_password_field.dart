import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactivePasswordField extends ReactiveFormField<String, String> {
  ReactivePasswordField({
    super.key,
    super.formControl,
    TextInputAction? textInputAction,
    Function()? onSubmitted,
    String? labelText,
    String? hintText,
    Widget? prefixIcon,
    int? maxLength,
    TextInputType? textInputType,
    Map<String, String Function(Object)>? validationMessages,
  }) : super(
          builder: (field) {
            final state = field as _ReactivePasswordFieldState<String>;
            return ReactiveTextField<String>(
              decoration: InputDecoration(
                labelText: labelText,
                suffixIcon: _PasswordVisibility(
                  visible: state._showPassword,
                  onClick: state._togglevisibility,
                ),
                hintText: hintText,
                prefixIcon: prefixIcon,
              ),
              keyboardType: textInputType,
              validationMessages: validationMessages,
              formControl: formControl,
              maxLength: maxLength,
              obscureText: !state._showPassword,
              textInputAction: textInputAction,
              onSubmitted: (c) => onSubmitted?.call(),
            );
          },
        );

  @override
  ReactiveFormFieldState<String, String> createState() =>
      _ReactivePasswordFieldState<String>();
}

class _ReactivePasswordFieldState<T> extends ReactiveFormFieldState<T, String> {
  bool _showPassword = false;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}

class _PasswordVisibility extends StatelessWidget {
  final bool visible;
  final VoidCallback onClick;
  const _PasswordVisibility({
    required this.visible,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClick,
      splashRadius: 1,
      icon: Icon(
        size: 24,
        visible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
        color: Colors.blueGrey.shade400,
      ),
    );
  }
}
