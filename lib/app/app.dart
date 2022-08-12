import 'package:pos_mobile_app/client/dio_client.dart';
import 'package:pos_mobile_app/pages/launcher/launcher_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [MaterialRoute(page: LauncherView, initial: true)],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: DioClient)
  ],
)
class App {}
