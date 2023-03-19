//

import 'package:flutter/material.dart';

import '../helpers/styling/pallet.dart';

enum TaskCategory {
  general,
  bug,
  idea,
  modifiers,
  challenge,
  coding;

  String get title {
    switch (this) {
      case TaskCategory.general:
        return 'General';
      case TaskCategory.bug:
        return 'Bug';
      case TaskCategory.idea:
        return 'Idea';
      case TaskCategory.modifiers:
        return 'Modifiers';
      case TaskCategory.challenge:
        return 'Challenge';
      case TaskCategory.coding:
        return 'Coding';
    }
  }

  Color get color {
    switch (this) {
      case TaskCategory.general:
        return Pallet.gray;
      case TaskCategory.bug:
        return Pallet.green;
      case TaskCategory.idea:
        return Pallet.pink;
      case TaskCategory.modifiers:
        return Pallet.blue;
      case TaskCategory.challenge:
        return Colors.purple;
      case TaskCategory.coding:
        return Colors.brown;
    }
  }
}
