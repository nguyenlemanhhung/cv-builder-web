import 'package:flutter/material.dart';

class Chip {
  final int id;
  final IconData icon;
  final String title;

  Chip(this.id, this.icon, this.title);
}

List<Chip> chipList = [
  Chip(
    1,
    Icons.access_alarm_outlined,
    'Giải thưởng',
  ),
  Chip(
    2,
    Icons.access_alarm_outlined,
    'Thưởng',
  ),
  Chip(
    3,
    Icons.access_alarm_outlined,
    'Căn-tin',
  ),
  Chip(
    4,
    Icons.access_alarm_outlined,
    'Khám sức khoẻ',
  ),
  Chip(
    5,
    Icons.access_alarm_outlined,
    'Trông trẻ',
  ),
  Chip(
    6,
    Icons.access_alarm_outlined,
    'Điện thoại',
  ),
];
