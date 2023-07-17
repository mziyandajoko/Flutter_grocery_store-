import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store/repositories/presentation/views/home/bloc/home_bloc.dart';
import 'package:grocery_store/repositories/presentation/views/home/home.dart';

class RouteGenerator {
  final HomeBloc homeBloc = HomeBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: homeBloc,
                  child: const HomeView(),
                ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error  Route'),
        ),
        body: const Center(
          child: Text('Error Route'),
        ),
      );
    });
  }
}
