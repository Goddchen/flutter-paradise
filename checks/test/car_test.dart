import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';

import 'car.dart';
import 'car_subject_extensions.dart';

void main() {
  test('automatic car does not have gear shift', () {
    final car = Car(driveMode: DriveMode.automatic);

    switch (car.driveMode) {
      case DriveMode.automatic:
        print('automatic driving');
      case DriveMode.manual:
        print('manual driving');
    }

    check(car).hasGearShift();
  });

  test('manual car has gear shift', () {
    final car = Car(driveMode: DriveMode.manual);

    check(car).hasGearShift();
  });
}
