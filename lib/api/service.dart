import 'package:dio/dio.dart';

class DataService {
  //Jk menggunakan android emulator
  //final String _url="http://10.0.2.2:8000/api/";

  final String _url="http://localhost:8000/api/";

  Dio dio = Dio();

  LoginService(String username, String password) async {
    final response = await dio.post(_url + 'login', data: {
      'username' : username,
      'password' : password,
    });
    return response.data;
  }
}