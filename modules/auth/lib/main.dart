import 'package:auth/presentation/screen/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'presentation/screen/auth/sign_in_screen.dart';

// void main() {
//   AuthModule.instance;

//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
          create: (context) => AuthCubit(), child: const SignInScreen()),
      builder: EasyLoading.init(),
    );
  }
}
