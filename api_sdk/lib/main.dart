import 'package:api_sdk/api_constants.dart';
import 'package:api_sdk/rest/rest_api_handler_data.dart';

class ApiSdk {

  /// BODY: {"username":"foo", "password": "bar"}
  static loginWithUsernameAndPassword(dynamic body) async {
    print("login called");
    final response = await RestApiHandlerData.postData(
        '${apiConstants["auth"]}/login', body);
    return response;
  }

  static logout(dynamic body) async {
    final response = await RestApiHandlerData.postData(
        '${apiConstants["auth"]}/logout', body);
    return response;
  }
  
  /// BODY: {"username":"foo", "password": "bar", "email":"baz"}
  static registerUser(dynamic body) async {
    final response = await RestApiHandlerData.postData(
        '${apiConstants["base"]}/register_user', body);
    return response;
  }

  /// BODY: {"picture_link":"sia://foobar"}
  static setProfilePicture(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/set_profile_picture', body);
    return response;
  }

  static getSelfUser() async {
    final response = await RestApiHandlerData.getData(
      '${apiConstants["base"]}/user');
    return response;
  }

  static getUser(String username) async {
    final response = await RestApiHandlerData.getData(
      '${apiConstants["base"]}/user?$username');
    return response;
  }

  /// BODY: {"session_name":"foo", "private_session":"bar", "is_looping":"baz"}
  static createSession(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/session', body);
    return response;
  }

  /// BODY: {"bio_text":"foobar"}
  static updateBio(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/bio', body);
    return response;
  }

  /// BODY: {"session_name":"foo", "blurb":"This is a blurb"}
  static updateBlurb(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/blurb', body);
    return response;
  }

  /// BODY: {"session_name":"foo"}
  static deleteSession(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/deleteSession', body);
    return response;
  }

  /// BODY: {"username":"foo", "session_name":"bar"}
  static addUserToSession(dynamic body) async {
    final response = await RestApiHandlerData.postData(
      '${apiConstants["base"]}/join', body);
    return response;
  }

  static getPublicSessions(dynamic body) async {
    final response = await RestApiHandlerData.getData(
      '${apiConstants["base"]}/publicSessionHeaders');
    return response;
  }

  static getUserData(int id) async {
    final response =
        await RestApiHandlerData.getData('${apiConstants["auth"]}/users/$id');
    return response;
  }
}