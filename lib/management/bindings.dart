import 'package:beauty/management/favorite%20page.dart';
import 'package:beauty/management/manage.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<Management>(Management());
    Get.put<Favorite>(Favorite());
  }

}