import 'package:checks/context.dart';

import 'car.dart';

extension CarSubjectExtensions on Subject<Car> {
  void hasGearShift() => context.expect(
        () => [
          'has gear shift',
        ],
        (actual) {
          switch (actual.driveMode) {
            case DriveMode.automatic:
              return Rejection(
                which: [
                  'does not have a gear shift',
                ],
              );
            case DriveMode.manual:
              return null;
          }
        },
      );
}
