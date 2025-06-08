class Car {
  Car({
    required this.driveMode,
    required this.wheelCount,
  });

  final DriveMode driveMode;
  final int wheelCount;

  @override
  String toString() {
    return 'Car(driveMode: $driveMode, wheelCount: $wheelCount)';
  }
}

enum DriveMode {
  automatic,
  manual,
}
