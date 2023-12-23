import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String saudacao() {
  var hour = DateTime.now().hour;
  if (hour < 4) {
    return 'Boa Madrugada';
  }
  if (hour < 12) {
    return 'Bom dia🌞';
  }
  if (hour < 17) {
    return 'Boa Tarde⛅';
  }
  return 'Boa Noite🌃';
}

String transformaData(DateTime data) {
  // pegue o dia, mes e ano do datatime nesse formato "19-12-23"
  String dia = DateFormat('dd').format(data);
  String mes = DateFormat('MM').format(data);
  String ano = DateFormat('yy').format(data);
  return '$dia-$mes-$ano';
}

String dataMMM(DateTime data) {
  // pegue a data e transforme nesse formado MMM brasil
  return DateFormat('MMM', 'pt_BR').format(data);
}
