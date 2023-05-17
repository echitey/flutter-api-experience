// Used to call user service and return a list to be used
import 'package:api_experience/core/constants.dart';
import 'package:api_experience/services/base_service.dart';
import 'package:api_experience/services/user_service.dart';

import '../models/user.dart';

class UserRepository {
  final BaseService _userService = UserService();

  Future<List<User>> fetchUsers() async {
    dynamic response = await _userService.fetchData(Constants.userUrl);
    Iterable resultList = response['data'];
    return resultList.map((e) => User.fromJson(e)).toList();
  }
}
