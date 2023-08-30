import 'package:bloc/bloc.dart';


part 'faqs_state.dart';

class FaqsCubit extends Cubit<FaqsState> {
  FaqsCubit() : super(FaqsState(isExpanded: false));
  void updateCurrentExpand(bool isExpanded){
    emit(FaqsState(isExpanded: true));
  }
}
