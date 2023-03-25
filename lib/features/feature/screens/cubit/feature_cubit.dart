import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature_state.dart';

class SupervisorCubit extends Cubit<FeatureState> {
  SupervisorCubit() : super(FeatureState(field: initialState()));

  void onCallEvent() async {}
}
