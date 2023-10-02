
 import 'package:dio/dio.dart';
import 'package:riverpod_boilerplate/src/services/api_service.dart';

class AuthService extends ApiService{
  Future<Response> signIn(String url, dynamic data)async{
    final res=await post(url,data: data);
    return res;
  }
 }