import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:auth/data/data.dart';
import 'package:core/core/const/status_enum.dart';
import 'package:auth/presentation/screen/auth/form/sign_in_form_model.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

import 'cubit/auth_cubit.dart';
import 'widgets/reactive_password_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status == CommonStatus.loading) {
            EasyLoading.show();
          } else if (state.status == CommonStatus.failure) {
            EasyLoading.showError('Có lỗi xảy ra, vui lòng thử lại');
          } else {
            EasyLoading.dismiss();
          }
        },
        builder: (context, state) => SigninFormModelFormBuilder(
          builder: (context, formModel, child) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReactiveTextField(
                  formControl: formModel.usernameControl,
                  decoration: const InputDecoration(hintText: 'Username'),
                  validationMessages: {
                    ValidationMessage.required: (error) =>
                        'Username không được để trống',
                  },
                ),
                const SizedBox(height: 12),
                ReactivePasswordField(
                  formControl: formModel.passwordControl,
                  hintText: 'Password',
                  validationMessages: {
                    ValidationMessage.required: (error) =>
                        'Password không được để trống',
                  },
                ),
                const SizedBox(height: 24),
                ReactiveSigninFormModelFormConsumer(
                  builder: (context, formModel, child) =>
                      GradientElevatedButton(
                    onPressed: () => handleSubmit(context, formModel),
                    style: GradientElevatedButton.styleFrom(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 71, 176, 184),
                          Color.fromARGB(255, 50, 105, 224),
                        ],
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleSubmit(BuildContext context, SigninFormModelForm formModel) {
    if (formModel.usernameControl.valid && formModel.passwordControl.valid) {
      final auth = formModel.model;
      context
          .read<AuthCubit>()
          .signIn(LoginParam(auth.username, auth.password));
    } else {
      formModel.form.markAllAsTouched();
    }
  }
}
