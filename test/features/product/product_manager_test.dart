import 'package:flutter_project_resources/http/exceptions/app_exception.dart';
import 'package:flutter_project_resources/manager/product_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../utils/fake_http_result.dart';
import '../../utils/mocked_product.dart';
import 'product.mocks.dart';

Future<void> main() async {
  late ProductManager manager;
  final productApi = MockProductApi();

  setUp(() {
    manager = ProductManager(mockedApi: productApi);
  });

  group('getProducts', () {
    final mockedProducts = getMockedProducts();

    void setUpMockSuccess200() {
      when(productApi.getProducts()).thenAnswer(
          (_) async => httpResult200(data: [mockedProducts.first.toMap()]));
    }

    void setUpMockFailure400() {
      when(productApi.getProducts())
          .thenAnswer((_) async => httpResult404(data: null));
    }

    test(
      'should return Product list when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockSuccess200();
        // act
        final result = await manager.getProducts();
        // assert
        expect(result, equals([mockedProducts.first]));
      },
    );

    test(
      'should throw an App Exception when the response code is 400 or other',
      () async {
        // arrange
        setUpMockFailure400();
        // act
        final call = manager.getProducts();
        // assert
        expect(() => call, throwsA(const TypeMatcher<AppException>()));
      },
    );
  });
}
