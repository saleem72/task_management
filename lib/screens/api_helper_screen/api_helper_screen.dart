//

import 'package:flutter/material.dart';
import 'package:task_management/screens/api_helper_screen/data/http_api_helper/http_api_helper.dart';
import 'package:http/http.dart' as http;
import 'package:task_management/screens/api_helper_screen/users_repository.dart';

class ApiHelperScreen extends StatelessWidget {
  const ApiHelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Helper'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              // future: HttpApiHelper(client: http.Client()).get(
              //   url: 'https://jsonplaceholder.typicode.com/',
              //   endPoint: 'users/1',
              // ),

              future: UserRepository(HttpApiHelper(client: http.Client()))
                  .getUser(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                }
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString());
                }
                return const Center(child: CircularProgressIndicator());
              },
            )
          ],
        ),
      ),
    );
  }
}
