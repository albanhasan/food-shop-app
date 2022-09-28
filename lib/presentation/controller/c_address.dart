import 'package:get/get.dart';

class CAddress extends GetxController {
  final _data = ''.obs;
  String get data => _data.value;
  setData(String n) => _data.value = n;
}
