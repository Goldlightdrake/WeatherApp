import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/app.dart';
import 'package:flutter_weather/repositories/weather_api_client.dart';
import 'package:flutter_weather/simple_bloc_observer.dart';
import 'package:http/http.dart' as http;

import 'blocks/bloc/theme_bloc.dart';
import 'repositories/weather_repository.dart';

void main() {
  final WeatherRepository weatherRepository = WeatherRepository(
    weatherApiClient: WeatherApiClient(
      httpClient: http.Client(),
    ),
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(
    BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: App(weatherRepository: weatherRepository),
    ),
  );
}
