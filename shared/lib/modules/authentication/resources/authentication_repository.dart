import 'package:api_sdk/main.dart';

class AuthenticationRepository {
  Future<dynamic> registerUserWithUsernameAndPassword(
      String username, String email, String password) async {
    final response = await ApiSdk.registerUser(
        {'username': username, 'email': email, 'password': password});
    print("Called Registed User");
    return response;
  }

  Future<dynamic> loginWithUsernameAndPassword(
      String username, String password) async {
    final response = await ApiSdk.loginWithUsernameAndPassword(
        {'username': username, 'password': password});
    return response;
  }

  Future<dynamic> getUserData(int id) async {
    final response = await ApiSdk.getUserData(id);

    return response;
  }
}
