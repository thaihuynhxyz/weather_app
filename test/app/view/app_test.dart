import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/weather/weather_view.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(WeatherPage), findsOneWidget);
    });
  });
}
