import 'package:chat_app/auth/bloc/auth_bloc.dart';
import 'package:chat_app/configuration.dart';
import 'package:chat_app/core/repository_bundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Provides a set of [Bloc]s and the [RepositoryBundle] globally from the root of the app
@immutable
class RootProvider extends StatelessWidget {
  final Widget child;
  const RootProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<RepositoryBundle>(
      //Provide Repositories Globally
      create: (context) => RepositoryBundle(
        mock: Configuration.useMockData,
        baseUrl: Configuration.baseUrl,
      ),
      child: MultiBlocProvider(
        providers: _buildBlocProvider(),
        child: child,
      ),
    );
  }
}

// Use global blocs here

List<BlocProvider<Bloc<dynamic, dynamic>>> _buildBlocProvider() => [
      BlocProvider<AuthBloc>(
        create: (BuildContext context) => AuthBloc(
          authService: RepositoryProvider.of<RepositoryBundle>(context).auth,
        ),
      ),
    ];
