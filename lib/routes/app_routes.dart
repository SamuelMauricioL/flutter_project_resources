part of 'app_pages.dart';

class Routes {
  static const login = '/login';
  static const home = '/home';

  static const product = '/product';
  static const details = '/details';

  static productDetails({String? id}) => '$product/$id$details';
}
