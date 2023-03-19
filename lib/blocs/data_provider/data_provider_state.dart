// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'data_provider_bloc.dart';

class DataProviderState extends Equatable {
  const DataProviderState({
    required this.currentDate,
    required this.tasks,
  });

  final DateTime currentDate;
  final List<Task> tasks;

  @override
  List<Object> get props => [currentDate, tasks];

  DataProviderState copyWith({
    DateTime? currentDate,
    List<Task>? tasks,
  }) {
    return DataProviderState(
      currentDate: currentDate ?? this.currentDate,
      tasks: tasks ?? this.tasks,
    );
  }
}
