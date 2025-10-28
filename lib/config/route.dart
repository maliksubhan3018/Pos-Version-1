import 'package:get/get.dart';
import 'package:posversion1/config/route_name.dart';
import 'package:posversion1/view/auth/login.dart';
import 'package:posversion1/view/auth/set_security.dart';
import 'package:posversion1/view/auth/store_profile.dart';
import 'package:posversion1/view/auth/user_profile.dart';
import 'package:posversion1/view/dashboard/dashboard.dart';
import 'package:posversion1/view/splash/onboarding.dart';
import 'package:posversion1/view/splash/splash.dart';

class AppRoutes {
  static routes() => [
    GetPage(name: MyPagesName.splash, page: () => const Splash()),
    GetPage(name: MyPagesName.onboarding, page: () => const Onboarding()),
    GetPage(name: MyPagesName.userprofile, page: () => const UserProfile()),
    GetPage(name: MyPagesName.storeProfile, page: () => const StoreProfile()),
    GetPage(name: MyPagesName.setSecurity, page: () => const SetSecurity()),
    GetPage(name: MyPagesName.login, page: () => const Login()),
    GetPage(name: MyPagesName.dashboard, page: () => const Dashboard()),
  ];
}
