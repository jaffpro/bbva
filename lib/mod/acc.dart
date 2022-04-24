import 'package:flutter/material.dart';

class Acc {
  int cnum;
  double amount;
  String transnum;
  Acc(this.cnum, this.amount, this.transnum);
}

class Opr {
  Color color;
  String title;
  Icon icon;
  Opr(this.color, this.icon, this.title);
}

class EvLog {
  Color color;
  String day;
  String ammount;
  String title;
  String subtitle;
  EvLog(this.ammount, this.color, this.day, this.title, this.subtitle);
}
