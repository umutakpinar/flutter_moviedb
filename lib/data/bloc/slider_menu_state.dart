part of 'slider_menu_bloc.dart';

@immutable
sealed class SliderMenuState {}

final class SliderMenuInitialState extends SliderMenuState {}

final class SliderMenuLoadingState extends SliderMenuState {}

final class SliderMenuSuccessState extends SliderMenuState {}

final class SliderMenuErrorState extends SliderMenuState {}
