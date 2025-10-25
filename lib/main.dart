import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posversion1/config/route.dart';
import 'package:posversion1/config/route_name.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes(),
       initialRoute: MyPagesName.onboarding,
      //home: const AllIn(), // ✅ Correct call
    );
  }
}
