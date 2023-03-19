// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
dateAdded
taskName
taskDescription
taskCategory

general gray
bug green
idea pink
modifiers blue
challenge purple
coding brown
*/

import 'package:equatable/equatable.dart';

import 'task_category.dart';

export 'task_category.dart';

class Task extends Equatable {
  final int id;
  final DateTime dateAdded;
  final String taskName;
  final String taskDescription;
  final TaskCategory taskCategory;
  const Task({
    required this.id,
    required this.dateAdded,
    required this.taskName,
    required this.taskDescription,
    required this.taskCategory,
  });

  @override
  List<Object?> get props => [id];

  static List<Task> dummyData = [
    Task(
      id: 1,
      dateAdded: DateTime.now().add(const Duration(hours: -2)),
      taskName: 'Task 1',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.challenge,
    ),
    Task(
      id: 2,
      dateAdded: DateTime.now().add(const Duration(hours: -3)),
      taskName: 'Task 2',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.bug,
    ),
    Task(
      id: 3,
      dateAdded: DateTime.now().add(const Duration(hours: 1)),
      taskName: 'Task 3',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.idea,
    ),
    Task(
      id: 4,
      dateAdded: DateTime.now().add(const Duration(hours: -1)),
      taskName: 'Task 4',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.coding,
    ),
    Task(
      id: 5,
      dateAdded: DateTime.now().add(const Duration(hours: -4)),
      taskName: 'Task 5',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.general,
    ),
    Task(
      id: 6,
      dateAdded: DateTime.now(),
      taskName: 'Task 6',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.general,
    ),
    Task(
      id: 7,
      dateAdded: DateTime.now(),
      taskName: 'Task 7',
      taskDescription:
          'It allows the user to choose from a set of standard date time formats as well as specify a customized pattern under',
      taskCategory: TaskCategory.challenge,
    ),
  ];
}
