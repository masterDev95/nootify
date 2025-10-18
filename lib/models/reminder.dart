import 'package:flutter/material.dart';

class Reminder {
  String id;
  String title;
  String message;
  int frequency;

  Reminder(this.title, this.message, this.frequency)
    : id = UniqueKey().toString();
}
