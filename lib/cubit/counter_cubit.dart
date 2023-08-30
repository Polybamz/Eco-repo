import 'package:bloc/bloc.dart';


part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(countValue: 0));
   void increament() => emit(CounterState(countValue: state.countValue + 1,wasIncreamented: true));
   void decreament() => emit(CounterState(countValue: state.countValue - 1,wasIncreamented: false));

}
