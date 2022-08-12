import 'package:dio/dio.dart';
import 'package:pos_mobile_app/app/app.locator.dart';
import 'package:pos_mobile_app/app/app.logger.dart';
import 'package:pos_mobile_app/models/user.model.dart';
import 'package:pos_mobile_app/services/authentication.service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewViewModel extends FutureViewModel<User> {
  final log = getLogger('MyViewModel');
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<User> getCurrentUser() async {
    log.i('');
    try {
      var response = await _authenticationService.getCurrentBaseUser();
      if (response == null) {
        log.i('Success Profile ${response.role}');
        switch (response.role) {
          case "MERCHANT":
          case "ADMIN":
          case "SUPERADMIN":
            break;
        }
      }
      return response;
    } on DioError catch (error) {
      throw Exception(error.message);
    }
  }

  @override
  Future<User> futureToRun() => getCurrentUser();

  @override
  void onError(error) {
    log.e(error);
  }
}
