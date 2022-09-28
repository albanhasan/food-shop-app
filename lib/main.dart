import 'package:bootcamp_food_shop/config/app_color.dart';
import 'package:bootcamp_food_shop/presentation/page/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID').then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
            primaryColor: AppColor.primary,
            colorScheme: ColorScheme.light(
                primary: AppColor.primary, secondary: AppColor.secondary),
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.red,
                foregroundColor: AppColor.secondary),
            scaffoldBackgroundColor: AppColor.bgScaffold),
        home: LoginPage());
  }
}
