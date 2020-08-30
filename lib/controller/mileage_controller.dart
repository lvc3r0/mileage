import 'package:get/get.dart';

class MileageController extends GetxController {
  int count = 0;
  List numberList = [0, 0, 0, 0, 0, 0];

  init() {
    start();
  }

  start() async {
    await Future.delayed(Duration(milliseconds: 200));
    count = count + 1;
    if (count < 999999) {
      List<int> newNumberList = [];
      List<String> listNumber = '$count'.split('');
      listNumber.forEach((e) => newNumberList.add(int.parse(e)));
      int deficit = numberList.length - newNumberList.length;
      List<int> deficitnumberList = List<int>.generate(deficit, (index) => 0);
      deficitnumberList.addAll(newNumberList);
      numberList = deficitnumberList;
      update();
      start();
    }
  }

  reset() async {
    count = 0;
    numberList = [0, 0, 0, 0, 0, 0];
    await Future.delayed(Duration(seconds: 1), start);
  }
}
