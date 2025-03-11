import 'package:get/get.dart';
import 'package:posture_pro/main_screen.dart';

/// A list of routes for the application using the GetX package. Each
/// route is represented by a `GetPage` object, representing the app's main routes.
final List<GetPage<dynamic>> appRoutes = [
  GetPage(name: '/home', page: () => const HomeScreen()),
  
];