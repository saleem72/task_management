// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'data_provider_bloc.dart';

abstract class DataProviderEvent extends Equatable {
  const DataProviderEvent();

  @override
  List<Object> get props => [];
}

class DataProviderSetCurrentDate extends DataProviderEvent {
  final DateTime date;
  const DataProviderSetCurrentDate({
    required this.date,
  });

  @override
  List<Object> get props => [date];
}
