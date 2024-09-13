// import 'dart:async';
// import 'dart:developer';
// import 'package:core/core/utils/either.dart';

// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:product/domain/use_case/product_use_case.dart';

// import 'product_repository.dart';

// class ProductController {
//   Completer completer = Completer();

//   Future<void> products(BuildContext context) {
//     final result =
//         ProductUseCase(GetIt.instance.get<ProductRepository>()).products();
//     result.fold((left) {
//       completer.complete();
//     }, (right) {
//       log('auth error $right');
//     });
//     return completer.future;
//   }
// }
