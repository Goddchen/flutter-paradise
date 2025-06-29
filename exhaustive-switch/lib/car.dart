// ignore_for_file: unused_local_variable

class Car {
  Car({required this.driveMode});

  final DriveMode driveMode;

  @override
  String toString() {
    return 'Car(driveMode: $driveMode)';
  }
}

enum DriveMode { automatic, manual }

sealed class SealedCar {
  const SealedCar({required this.driveMode});

  final DriveMode driveMode;
}

class NewCar extends SealedCar {
  NewCar() : super(driveMode: DriveMode.automatic);
}

class OldCar extends SealedCar {
  OldCar() : super(driveMode: DriveMode.manual);
}

switchStatement(Car car) {
  switch (car.driveMode) {
    case DriveMode.automatic:
      print('automatic driving');
    case DriveMode.manual:
      print('manual driving');
  }
}

switchExpression(Car car) {
  // ignore: unused_local_variable
  final bool needsInteraction = switch (car.driveMode) {
    DriveMode.automatic => false,
    DriveMode.manual => true,
  };
}

switchWithDefault(Car car) {
  switch (car.driveMode) {
    case DriveMode.manual:
      print('manual driving');
    default:
      print('drives with magic');
  }
}

switchStatementMissingOneCase(Car car) {
  switch (car.driveMode) {
    case DriveMode.manual:
      print('manual driving');
  }
}

newSwitch(Car car) {
  switch (car.driveMode) {
    case DriveMode.automatic:
      // TODO: Handle this case.
      throw UnimplementedError();
    case DriveMode.manual:
      // TODO: Handle this case.
      throw UnimplementedError();
  }
}

fallingThrough(Car car) {
  switch (car.driveMode) {
    case DriveMode.automatic:
    case DriveMode.manual:
      print('Handles both');
  }

  final sameCodeForBoth = switch (car.driveMode) {
    DriveMode.automatic || DriveMode.manual => true,
  };
}
