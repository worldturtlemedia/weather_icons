import 'package:flutter_test/flutter_test.dart';

import 'package:weather_icons/src/util/rotate.dart';
import 'package:weather_icons/weather_icons.dart';

import 'util/test_widget.dart';

void main() {
  test('should not accept a null degree', () {
    expect(() => WindIcon(degree: null), throwsAssertionError);
  });

  test('should throw on an invalid degree', () {
    expect(() => WindIcon(degree: -5), throwsAssertionError);
    expect(() => WindIcon(degree: 0), returnsNormally);
    expect(() => WindIcon(degree: 360), returnsNormally);
    expect(() => WindIcon(degree: 400), throwsAssertionError);
  });

  testWidgets('should create a wind icon', (tester) async {
    await tester.pumpWidget(TestWidget(child: WindIcon.towards_n));
    final degree =
        (find.byType(Rotate).evaluate().first.widget as Rotate).degree;
    expect(find.byType(WindIcon), findsOneWidget);
    expect(degree, 0);
  });

  _testIcon(WidgetTester tester, WindIcon actual, double expected) async {
    await tester.pumpWidget(
      TestWidget(child: actual),
    );
    expect(
      (find.byType(Rotate).evaluate().first.widget as Rotate).degree,
      expected,
    );
  }

  testWidgets('create towards n icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_n, 0);
  });

  testWidgets('create towards nne icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_nne, 22.5);
  });

  testWidgets('create towards ne icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_ne, 45);
  });

  testWidgets('create towards ene icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_ene, 67.5);
  });

  testWidgets('create towards e icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_e, 90);
  });

  testWidgets('create towards ese icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_ese, 112.5);
  });
  testWidgets('create towards se icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_se, 135);
  });

  testWidgets('create towards sse icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_sse, 157.5);
  });
  testWidgets('create towards s icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_s, 180);
  });
  testWidgets('create towards ssw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_ssw, 202.5);
  });
  testWidgets('create towards sw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_sw, 225);
  });
  testWidgets('create towards wsw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_wsw, 247.5);
  });
  testWidgets('create towards w icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_w, 270);
  });

  testWidgets('create towards wnw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_wnw, 292.5);
  });

  testWidgets('create towards nw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_nw, 315);
  });

  testWidgets('create towards nnw icon', (tester) async {
    await _testIcon(tester, WindIcon.towards_nnw, 337.5);
  });

  // From

  testWidgets('create from n icon', (tester) async {
    await _testIcon(tester, WindIcon.from_n, 360);
  });

  testWidgets('create from nne icon', (tester) async {
    await _testIcon(tester, WindIcon.from_nne, 337.5);
  });

  testWidgets('create from ne icon', (tester) async {
    await _testIcon(tester, WindIcon.from_ne, 315);
  });

  testWidgets('create from ene icon', (tester) async {
    await _testIcon(tester, WindIcon.from_ene, 292.5);
  });

  testWidgets('create from e icon', (tester) async {
    await _testIcon(tester, WindIcon.from_e, 270);
  });

  testWidgets('create from ese icon', (tester) async {
    await _testIcon(tester, WindIcon.from_ese, 247.5);
  });
  testWidgets('create from se icon', (tester) async {
    await _testIcon(tester, WindIcon.from_se, 225);
  });

  testWidgets('create from sse icon', (tester) async {
    await _testIcon(tester, WindIcon.from_sse, 202.5);
  });
  testWidgets('create from s icon', (tester) async {
    await _testIcon(tester, WindIcon.from_s, 180);
  });
  testWidgets('create from ssw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_ssw, 157.5);
  });
  testWidgets('create from sw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_sw, 135);
  });
  testWidgets('create from wsw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_wsw, 112.5);
  });
  testWidgets('create from w icon', (tester) async {
    await _testIcon(tester, WindIcon.from_w, 90);
  });

  testWidgets('create from wnw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_wnw, 67.5);
  });

  testWidgets('create from nw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_nw, 45);
  });

  testWidgets('create from nnw icon', (tester) async {
    await _testIcon(tester, WindIcon.from_nnw, 22.5);
  });
}
