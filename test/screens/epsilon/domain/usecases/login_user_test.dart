//

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:dartz/dartz.dart';

import 'package:task_management/screens/epsilon/domain/repository/login_repository.dart';
import 'package:task_management/screens/epsilon/domain/usecases/login_user.dart';

import 'login_user_test.mocks.dart';

@GenerateMocks([LoginRepository])
void main() {
  late LoginUser usecase;
  late MockLoginRepository mockLoginRepository;

  // final tEmail = 'test@gmail.com';
  // final tPassword = 'password';
  // final tResult = 'It is ok';

  setUpAll(() {
    mockLoginRepository = MockLoginRepository();
    usecase = LoginUser(repository: mockLoginRepository);
  });

  group('testing login use case', () {
    test(
      'should get Ok String for the params from the repository',
      () async {
        //arange

        when(mockLoginRepository.login(
                email: 'test@gmail.com', password: 'password'))
            .thenAnswer((_) async => const Right('It is ok'));

        // act
        final result = await usecase.call(
            const LoginParams(email: 'test@gmail.com', password: 'password'));

        // assert
        expect(result, equals(const Right('It is ok')));
        verify(mockLoginRepository.login(
            email: 'test@gmail.com', password: 'password'));
        verifyNoMoreInteractions(mockLoginRepository);
      },
    );
  });
}



/*
void main() {
  late LoginUser usecase;
  late MockLoginRepository mockLoginRepository;

  final tEmail = 'test@gmail.com';
  final tPassword = 'password';
  final tResult = 'It is ok';

  setUp(() {
    mockLoginRepository = MockLoginRepository();
    usecase = LoginUser(repository: mockLoginRepository);
  });

  test(
    'should get Ok String for the params from the repository',
    () async {
      when(mockLoginRepository.login(email: tEmail, password: tPassword))
          .thenAnswer((_) async {
        return Right(tResult);
      });

      final result =
          await usecase.call(LoginParams(email: tEmail, password: tPassword));
      expect(result, Right(tResult));
      verify(mockLoginRepository.login(email: tEmail, password: tPassword));
      verifyNoMoreInteractions(mockLoginRepository);
    },
  );
}
*/