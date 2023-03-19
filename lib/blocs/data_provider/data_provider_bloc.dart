import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_management/models/task.dart';

part 'data_provider_event.dart';
part 'data_provider_state.dart';

class DataProviderBloc extends Bloc<DataProviderEvent, DataProviderState> {
  DataProviderBloc()
      : super(DataProviderState(
            currentDate: DateTime.now(), tasks: Task.dummyData)) {
    on<DataProviderSetCurrentDate>(_onSetCurrentDate);
  }

  _onSetCurrentDate(
      DataProviderSetCurrentDate event, Emitter<DataProviderState> emit) {
    emit(state.copyWith(currentDate: event.date));
  }
}
