import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_menu_event.dart';
part 'user_menu_state.dart';

class UserMenuBloc extends Bloc<UserMenuEvent, UserMenuState> {
  UserMenuBloc() : super(UserMenuInitial()) {
    on<UserMenuEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
