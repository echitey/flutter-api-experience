import 'package:api_experience/models/user.dart';
import 'package:api_experience/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserRepository repository = UserRepository();
    List<User> users = [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('URL EXPERIENCE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                users = await repository.fetchUsers();
                if (users.isEmpty) {
                  // API RESPONSE EMPTY
                  print("EMPTY");
                } else {
                  print(users);
                }
              },
              child: const Text(
                'PRESS ME',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
