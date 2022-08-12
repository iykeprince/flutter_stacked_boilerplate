import 'package:dio/dio.dart';
import 'package:pos_mobile_app/app/app.locator.dart';
import 'package:pos_mobile_app/client/dio_client.dart';

class AuthService {
  Dio dioClient = locator<DioClient>().dio;
}
