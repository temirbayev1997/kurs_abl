import 'package:flutter/material.dart';

class AvailabilityModel {
  final DateTime date;
  final List<TimeSlot> availableSlots;

  AvailabilityModel({
    required this.date,
    required this.availableSlots,
  });
}

class TimeSlot {
  final String id;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final bool isAvailable;

  TimeSlot({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.isAvailable,
  });
}
