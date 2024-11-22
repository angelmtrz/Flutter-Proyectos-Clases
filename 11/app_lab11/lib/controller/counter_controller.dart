import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs; // Obs para hacer uso de Rx (Reactividad)

  void increment() => count++;
}
