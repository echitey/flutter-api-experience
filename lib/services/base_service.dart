// Base abstract class from api requests -- Not necessarily needed.
// Used to keep the services signature. Can be used to state the CRUD operation

abstract class BaseService {
  Future<dynamic> fetchData(String url);
  //Future<dynamic> postData(String url, String body);
  //Future<dynamic> putData(String url, String body);
  //Future<dynamic> deleteData(String url, String body);
}
