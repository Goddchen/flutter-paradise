import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';

import 'car.dart';
import 'car_subject_extensions.dart';

void main() {
  test('automatic car does not have gear shift', () {
    final car = Car(
      driveMode: DriveMode.automatic,
      wheelCount: 4,
    );

    switch (car.driveMode) {
      case DriveMode.automatic:
        print('automatic driving');
      case DriveMode.manual:
        print('manual driving');
    }

    check(car).not((subject) => subject.hasGearShift());
  });

  test('manual car has gear shift', () {
    final car = Car(
      driveMode: DriveMode.manual,
      wheelCount: 4,
    );

    check(car).hasGearShift();
    check(car)
        .has((car) => car.driveMode, 'driveMode')
        .equals(DriveMode.manual);

    check(car).has((car) => car.wheelCount, 'wheen count')
      ..isGreaterOrEqual(2)
      ..isLessOrEqual(4);

    check<String>('Test')
      ..startsWith('T')
      ..length.which((length) => length
        ..isGreaterThan(1)
        ..isLessThan(5));
  });
}
