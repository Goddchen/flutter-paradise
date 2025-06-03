class Car {
  Car({required this.driveMode});

  final DriveMode driveMode;

  @override
  String toString() {
    return 'Car(driveMode: $driveMode)';
  }
}

enum DriveMode {
  automatic,
  manual,
}
