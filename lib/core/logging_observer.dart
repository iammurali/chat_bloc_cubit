import 'package:flutter_bloc/flutter_bloc.dart';

class LoggingObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(bloc.runtimeType.toString() +
        ':\t' +
        transition.currentState.toString() +
        ' + ' +
        transition.event.toString() +
        ' -> ' +
        transition.nextState.toString());
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stacktrace) {
    print(cubit.runtimeType.toString() + ':\t' + error.toString());
    super.onError(cubit, error, stacktrace);
  }
}
