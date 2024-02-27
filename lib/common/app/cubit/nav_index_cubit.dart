import 'package:bloc/bloc.dart';

class NavIndexCubit extends Cubit<int> {
  NavIndexCubit() : super(0);

  void changeIndex(int value) => emit(value); 
}
