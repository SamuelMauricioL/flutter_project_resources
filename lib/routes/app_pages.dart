import 'package:flutter_project_resources/pages/auth/auth_middleware.dart';
import 'package:flutter_project_resources/pages/details/details_middleware.dart';
import 'package:flutter_project_resources/pages/details/details_page.dart';
import 'package:flutter_project_resources/pages/home/home_binding.dart';
import 'package:flutter_project_resources/pages/home/home_page.dart';
import 'package:flutter_project_resources/pages/login/login_page.dart';
import 'package:flutter_project_resources/pages/options/options_page.dart';
import 'package:flutter_project_resources/pages/product/product_binding.dart';
import 'package:flutter_project_resources/pages/product/product_middleware.dart';
import 'package:flutter_project_resources/pages/product/product_page.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_binding.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_middleware.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.home,
      middlewares: [AuthGuard()],
      binding: HomeBinding(),
      transition: Transition.circularReveal,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.options,
      middlewares: [AuthGuard()],
      page: () => const OptionsPage(),
    ),
    GetPage(
      name: Routes.product,
      middlewares: [AuthGuard(), ProductGuard()],
      binding: ProductBinding(),
      page: () => const ProductPage(),
      transition: Transition.cupertino,
      children: [
        GetPage(
          name: Routes.details,
          middlewares: [DetailsGuard()],
          transition: Transition.downToUp,
          page: () => const DetailsPage(),
        ),
      ],
    ),
    GetPage(
      name: Routes.transaction,
      middlewares: [AuthGuard(), TransactionGuard()],
      binding: TransactionBinding(),
      page: () => const TransactionPage(),
      transition: Transition.cupertino,
    ),
  ];
}
