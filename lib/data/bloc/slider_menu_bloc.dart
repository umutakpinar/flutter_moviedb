import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'slider_menu_event.dart';
part 'slider_menu_state.dart';

class SliderMenuBloc extends Bloc<SliderMenuEvent, SliderMenuState> {
  SliderMenuBloc() : super(SliderMenuInitialState()) {
    on<SliderMenuFetchAllEvent>((event, emit) {
      emit(SliderMenuLoadingState());
      //API isteği atacağız.
    });
  }
}
