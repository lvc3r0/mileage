import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mileage/controller/mileage_controller.dart';

class MielagePage extends StatelessWidget {
  MielagePage({Key key}) : super(key: key);

  final MileageController mileageController = Get.put(MileageController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff633AB4),
      body: Center(
        child: Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Color(0xff825BCE),
          child: Expanded(
            /* width: size.width * 0.9,
            height: 120, */
            child: Container(
              height: 130,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kilometraje',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () {
                            mileageController.reset();
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'reset',
                                style: TextStyle(
                                  color: Color(0xff825BCE),
                                ),
                              ),
                              Icon(
                                Icons.refresh,
                                color: Color(0xff825BCE),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GetBuilder<MileageController>(
                    init: mileageController.init(),
                    builder: (_) {
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: _.numberList
                              .map((e) => Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Color(0xff4C22A2),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                      child: Center(
                                        child: Text(
                                          '$e',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
