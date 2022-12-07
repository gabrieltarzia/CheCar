import 'package:car_review/app/controllers/profile.controller.dart';
import 'package:car_review/app/controllers/schedule.controller.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController());
    Get.lazyPut(() => ProfileController());
  }
}
