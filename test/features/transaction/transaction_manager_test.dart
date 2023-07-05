import 'package:flutter_project_resources/http/exceptions/app_exception.dart';
import 'package:flutter_project_resources/manager/transaction_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../utils/fake_http_result.dart';
import '../../utils/mocked_transaction.dart';
import 'transaction.mocks.dart';

Future<void> main() async {
  late TransactionManager manager;
  final transactionApi = MockTransactionApi();

  setUp(() {
    manager = TransactionManager(mockedApi: transactionApi);
  });

  group('getTransactions', () {
    final mockedTransactions = getMockedTransactions();

    void setUpMockSuccess200() {
      when(transactionApi.getTransactions()).thenAnswer(
          (_) async => httpResult200(data: [mockedTransactions.first.toMap()]));
    }

    void setUpMockFailure400() {
      when(transactionApi.getTransactions())
          .thenAnswer((_) async => httpResult404(data: null));
    }

    test(
      'should return Transaction list when the response code is 200 (success)',
      () async {
        // arrange
        setUpMockSuccess200();
        // act
        final result = await manager.getTransactions();
        // assert
        expect(result, equals([mockedTransactions.first]));
      },
    );

    test(
      'should throw an App Exception when the response code is 400 or other',
      () async {
        // arrange
        setUpMockFailure400();
        // act
        final call = manager.getTransactions();
        // assert
        expect(() => call, throwsA(const TypeMatcher<AppException>()));
      },
    );
  });
}
