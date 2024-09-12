import 'package:auth/data/repository_impl.dart';
import 'package:auth/presentation/screen/auth/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

import 'presentation/auth_module.dart';
import 'presentation/screen/auth/sign_in_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  AuthModule.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthCubit(GetIt.instance.registerSingleton<AuthRepositoryImpl>),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SignInScreen(),
      ),
    );
  }
}
