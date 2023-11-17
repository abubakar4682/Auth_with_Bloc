import 'package:appbloc/app_events.dart';
import 'package:appbloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEventss,AppStates>{
  AppBloc():super (InitState()){

    on<Increment>((event,emit){
      emit(AppStates(counter: state.counter+1));
    }

    );

  }

}