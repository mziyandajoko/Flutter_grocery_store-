import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:grocery_store/data/grocery_data.json';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial(tabIndex: 0)) {
    on<HomeEvent>((event, emit) {
      //makes action based on event of the user then return state
      if (event is TapChanged) {
        emit(HomeInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
