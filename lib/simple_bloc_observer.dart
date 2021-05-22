import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/blocks/bloc/weather_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print('onEvenet $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('onTransition $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    print('onError $error');
    super.onError(bloc, error, stackTrace);
  }
}
