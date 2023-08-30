import 'package:bloc/bloc.dart';


part 'bnb_state.dart';


class BnbCubit extends Cubit<BnbState> {
  BnbCubit() : super(BnbState(currentIndex: 0));
  void updateCurrentIndex(int index){
    emit(BnbState(currentIndex: index));
    print(index);
  }
}
