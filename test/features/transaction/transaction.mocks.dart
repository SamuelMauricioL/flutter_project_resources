// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_project_resources/test/features/transaction/transaction.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:flutter_project_resources/api/transaction_api.dart' as _i3;
import 'package:flutter_project_resources/http/http_result.dart' as _i2;
import 'package:flutter_project_resources/manager/transaction_manager.dart'
    as _i4;
import 'package:flutter_project_resources/models/transaction_model.dart' as _i7;
import 'package:flutter_project_resources/repositories/transaction_repository.dart'
    as _i5;
import 'package:flutter_project_resources/services/transaction_service.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeHttpResult_0<T> extends _i1.Fake implements _i2.HttpResult<T> {}

class _FakeTransactionApi_1 extends _i1.Fake implements _i3.TransactionApi {}

class _FakeTransactionManager_2 extends _i1.Fake
    implements _i4.TransactionManager {}

class _FakeTransactionRepository_3 extends _i1.Fake
    implements _i5.TransactionRepository {}

/// A class which mocks [TransactionApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockTransactionApi extends _i1.Mock implements _i3.TransactionApi {
  MockTransactionApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.HttpResult<dynamic>> getTransactions() => (super.noSuchMethod(
        Invocation.method(
          #getTransactions,
          [],
        ),
        returnValue:
            Future<_i2.HttpResult<dynamic>>.value(_FakeHttpResult_0<dynamic>()),
      ) as _i6.Future<_i2.HttpResult<dynamic>>);
}

/// A class which mocks [TransactionManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockTransactionManager extends _i1.Mock
    implements _i4.TransactionManager {
  MockTransactionManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.TransactionApi get api => (super.noSuchMethod(
        Invocation.getter(#api),
        returnValue: _FakeTransactionApi_1(),
      ) as _i3.TransactionApi);
  @override
  set api(_i3.TransactionApi? _api) => super.noSuchMethod(
        Invocation.setter(
          #api,
          _api,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<List<_i7.TransactionModel>> getTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
}

/// A class which mocks [TransactionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTransactionService extends _i1.Mock
    implements _i8.TransactionService {
  MockTransactionService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.TransactionManager get transactionManager => (super.noSuchMethod(
        Invocation.getter(#transactionManager),
        returnValue: _FakeTransactionManager_2(),
      ) as _i4.TransactionManager);
  @override
  _i5.TransactionRepository get transactionRepository => (super.noSuchMethod(
        Invocation.getter(#transactionRepository),
        returnValue: _FakeTransactionRepository_3(),
      ) as _i5.TransactionRepository);
  @override
  _i6.Future<List<_i7.TransactionModel>> syncTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #syncTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<List<_i7.TransactionModel>> getTransactionsFromDb() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionsFromDb,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> saveTransactions(List<_i7.TransactionModel>? transactions) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveTransactions,
          [transactions],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.TransactionModel>> findAvailableTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #findAvailableTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> updateTransaction(_i7.TransactionModel? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTransaction,
          [transaction],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.TransactionModel>> findByTransactionId(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #findByTransactionId,
          [id],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> deleteTransactionById(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTransactionById,
          [id],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteTransaction(_i7.TransactionModel? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTransaction,
          [transaction],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [TransactionApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockAssetRemoteDatasource extends _i1.Mock implements _i3.TransactionApi {
  MockAssetRemoteDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i2.HttpResult<dynamic>> getTransactions() => (super.noSuchMethod(
        Invocation.method(
          #getTransactions,
          [],
        ),
        returnValue:
            Future<_i2.HttpResult<dynamic>>.value(_FakeHttpResult_0<dynamic>()),
      ) as _i6.Future<_i2.HttpResult<dynamic>>);
}

/// A class which mocks [TransactionManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockAssetApiHandler extends _i1.Mock implements _i4.TransactionManager {
  MockAssetApiHandler() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.TransactionApi get api => (super.noSuchMethod(
        Invocation.getter(#api),
        returnValue: _FakeTransactionApi_1(),
      ) as _i3.TransactionApi);
  @override
  set api(_i3.TransactionApi? _api) => super.noSuchMethod(
        Invocation.setter(
          #api,
          _api,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<List<_i7.TransactionModel>> getTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
}

/// A class which mocks [TransactionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTransactionServiceStorage extends _i1.Mock
    implements _i8.TransactionService {
  MockTransactionServiceStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.TransactionManager get transactionManager => (super.noSuchMethod(
        Invocation.getter(#transactionManager),
        returnValue: _FakeTransactionManager_2(),
      ) as _i4.TransactionManager);
  @override
  _i5.TransactionRepository get transactionRepository => (super.noSuchMethod(
        Invocation.getter(#transactionRepository),
        returnValue: _FakeTransactionRepository_3(),
      ) as _i5.TransactionRepository);
  @override
  _i6.Future<List<_i7.TransactionModel>> syncTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #syncTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<List<_i7.TransactionModel>> getTransactionsFromDb() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTransactionsFromDb,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> saveTransactions(List<_i7.TransactionModel>? transactions) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveTransactions,
          [transactions],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.TransactionModel>> findAvailableTransactions() =>
      (super.noSuchMethod(
        Invocation.method(
          #findAvailableTransactions,
          [],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> updateTransaction(_i7.TransactionModel? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateTransaction,
          [transaction],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i7.TransactionModel>> findByTransactionId(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #findByTransactionId,
          [id],
        ),
        returnValue:
            Future<List<_i7.TransactionModel>>.value(<_i7.TransactionModel>[]),
      ) as _i6.Future<List<_i7.TransactionModel>>);
  @override
  _i6.Future<void> deleteTransactionById(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTransactionById,
          [id],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteTransaction(_i7.TransactionModel? transaction) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteTransaction,
          [transaction],
        ),
        returnValue: Future<void>.value(),
        returnValueForMissingStub: Future<void>.value(),
      ) as _i6.Future<void>);
}