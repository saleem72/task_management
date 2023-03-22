//

import 'dart:convert';

import 'package:task_management/screens/api_helper_screen/domian/api_helper.dart';
import 'package:task_management/screens/api_helper_screen/user.dart';
import 'package:task_management/screens/epsilon/core/failure/failure.dart';

class UserRepository {
  final ApiHelper apiHelper;

  UserRepository(this.apiHelper);

  Future<String> getUser() async {
    try {
      final response = await apiHelper.get(
          url: 'https://jsonplaceholder.typicode.com/', endPoint: 'users/1');
      final user = User.fromMap(response);
      return user.toMap().toString();
    } on TypeError {
      return 'Fail to decode object';
    } catch (ex) {
      print(ex.runtimeType);
      final failure = Failure.fromException(ex);
      return '${ex.runtimeType} ${failure.message}';
    }
  }
}
