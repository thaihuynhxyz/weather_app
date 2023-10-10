import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/data/model/forecast.dart';
import 'package:weather_app/data/repository/location_repository.dart';
import 'package:weather_app/weather/weather_provider.dart';

/// Flutter code sample for pinned [SearchAnchor] while scrolling.

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff6750a4),
      ),
      home: const Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              _AppBar(),
              _Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AppBar extends ConsumerWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      clipBehavior: Clip.none,
      shape: const StadiumBorder(),
      scrolledUnderElevation: 0,
      titleSpacing: 0,
      backgroundColor: Colors.transparent,
      floating: true,
      pinned: true,
      toolbarHeight: 72,
      title: Padding(
        padding: const EdgeInsets.all(8),
        child: SearchAnchor.bar(
          isFullScreen: false,
          suggestionsBuilder:
              (BuildContext context, SearchController controller) async {
            final name = controller.text;
            if (name.length < 3) {
              return [const SizedBox()];
            }
            try {
              final locations =
                  await ref.read(locationRepositoryProvider).search(name);
              return locations.map((location) {
                return ListTile(
                  title: Text(location.name),
                  onTap: () {
                    ref.read(weatherProvider.notifier).forecast(
                          location.latitude,
                          location.longitude,
                        );
                    controller.closeView(location.name);
                    FocusScope.of(context).unfocus();
                  },
                );
              });
            } catch (e) {
              return [ErrorWidget(e)];
            }
          },
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ref.watch(weatherProvider).when(
              data: (data) {
                if (data == null) {
                  return const Center(
                    child: Text('No data'),
                  );
                }
                final description =
                    weatherDescription[data.currentWeather.weathercode];
                final icon = weatherIcon[data.currentWeather.weathercode];
                return Column(
                  children: [
                    SvgPicture.asset(
                      'assets/$icon.svg',
                      width: 256,
                      height: 256,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      description ?? 'Unknown',
                      style: textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    // Temperature
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.currentWeather.temperature.toStringAsFixed(1),
                          style: textTheme.displayLarge,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          data.currentWeatherUnits.temperature,
                          style: textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ],
                );
              },
              error: (e, st) {
                return ErrorWidget(e);
              },
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
