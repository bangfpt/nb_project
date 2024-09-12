import 'package:auth/presentation/screen/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'enviroment/app_environment.dart';
import 'enviroment/environment.dart';
import 'localization/localization.dart';
import 'routes.dart';

void main() {
  FlavorConfig.initValue([AppEnv.dev], canAccessDevelopmentMode: true);
  start();
}

void start() async {
  FlavorConfig.env.modules.initEnv();
  await FlavorConfig.env.modules.inject();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();

  static MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalization.delegate,
          ...FlavorConfig.env.modules.localizationsDelegates
        ],
        builder: EasyLoading.init(),
        initialRoute: MainRouteName.splash,
        getPages: [...MainRoutePages.pages],
      ),
    );
  }
}
