import 'package:get/get.dart';

mixin BaseControllerSystem on GetxController {
  bool isLoading = false;
  setLoadingStatus([bool? newState]) {
    isLoading = newState ?? (!isLoading);
    update();
  }
}
