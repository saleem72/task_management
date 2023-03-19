//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_management/helpers/styling/pallet.dart';
import 'package:task_management/widgets/dashed_line.dart';

import '../blocs/data_provider/data_provider_bloc.dart';
import '../helpers/date_utilities.dart';
import '../models/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          _header(context),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    DateFormat('MMM yyyy').format(DateTime.now()),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  weekDays(),
                  dayHours(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _header(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 8,
        top: MediaQuery.of(context).viewPadding.top + 8,
      ),
      // decoration: BoxDecoration(
      //   color: Colors.blueAccent,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black.withOpacity(0.2),
      //       offset: const Offset(0, 3),
      //       blurRadius: 6,
      //     ),
      //   ],
      // ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.black,
                      ),
                ),
                Text(
                  'Hello Jhon',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => print('Add new Task'),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Pallet.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text(
                    'Add task',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget weekDays() {
    final days = DateUtilities.getDaysOfWeek();
    return BlocBuilder<DataProviderBloc, DataProviderState>(
      builder: (context, state) {
        return SizedBox(
          height: 56,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: days.length,
            itemBuilder: (BuildContext context, int index) {
              return DayCell(
                day: days[index],
                isActive: state.currentDate.isTheSameDate(days[index]),
              );
            },
          ),
        );
      },
    );
  }

  Widget dayHours() {
    return BlocBuilder<DataProviderBloc, DataProviderState>(
      builder: (context, state) {
        final hours = DateUtilities.getDayHours(state.currentDate);
        final tasks = state.tasks;
        print(tasks);
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: hours.length,
            itemBuilder: (BuildContext context, int index) {
              final List<Task> subTasks = tasks
                  .where((task) =>
                      task.dateAdded.isTheSameDate(state.currentDate) &&
                      task.dateAdded.hour == hours[index].hour)
                  .toList();
              return HourCell(
                hour: hours[index],
                tasks: subTasks,
              );
            },
          ),
        );
      },
    );
  }
}

class HourCell extends StatelessWidget {
  const HourCell({
    super.key,
    required this.hour,
    required this.tasks,
  });
  final DateTime hour;
  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(DateFormat('hh:mm a').format(hour)),
          const SizedBox(width: 16),
          Expanded(
            child: tasks.isEmpty
                ? const DashedLine()
                : Column(
                    children: tasks.map((e) => TaskRow(task: e)).toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

class TaskRow extends StatelessWidget {
  const TaskRow({
    Key? key,
    required this.task,
  }) : super(key: key);
  final Task task;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(bottom: 8),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: task.taskCategory.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.taskName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              task.taskDescription,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
            )
          ],
        ));
  }
}

class DayCell extends StatelessWidget {
  const DayCell({
    Key? key,
    required this.day,
    required this.isActive,
  }) : super(key: key);

  final DateTime day;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context
          .read<DataProviderBloc>()
          .add(DataProviderSetCurrentDate(date: day)),
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, right: 32),
        child: Column(
          children: [
            Text(
              DateFormat('EEE').format(day),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isActive ? Pallet.green : Colors.black,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              DateFormat('dd').format(day),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isActive ? Pallet.green : Colors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
