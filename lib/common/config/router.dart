import 'package:baadhi_team_presence/common/screens/routestack.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getPages() {
  return [
    GetPage(
      name: '/',
      page: () => const RouteStack(),
      transition: Transition.cupertino,
    ),
  ];
}
