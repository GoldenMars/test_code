import 'package:auto_route/auto_route.dart';
import 'package:test_code/navigation/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: EnterSimIdRoute.page)];
}
