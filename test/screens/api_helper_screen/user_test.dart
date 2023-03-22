//

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:task_management/screens/api_helper_screen/user.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('User Json serilization', () {
    test(
      'should return a valid user when it is ok',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(fixture('user.json'));
        // act
        final result = User.fromMap(jsonMap);
        // assert
        expect(result, isA<User>());
      },
    );

    test(
      'should throw [TypeError] when there is some thing wrong',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('bad_user.json'));
        // act

        // assert
        expect(() => User.fromMap(jsonMap),
            throwsA(const TypeMatcher<TypeError>()));
      },
    );
  });
}
