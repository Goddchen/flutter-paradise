import 'package:checks/checks.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Simple string test', () {
    final String testString = 'Test';

    expect(testString, equals('Test'));
    check(testString).equals('Test');
  });
}
