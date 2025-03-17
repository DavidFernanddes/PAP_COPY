import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'missing_qr_event.dart';
part 'missing_qr_state.dart';

class MissingQrBloc extends Bloc<MissingQrEvent, MissingQrState> {
  MissingQrBloc() : super(MissingQrInitial()) {
    on<MissingQrEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
