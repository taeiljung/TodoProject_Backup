import 'dart:async';

// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:table_calendar/table_calendar.dart'; // TABLECALENDAR 추가
import 'firebase_options.dart';
import 'package:intl/date_symbol_data_local.dart';
import '/LoginForm/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 날짜와 시간의 형식을 초기화
  await initializeDateFormatting();
  // Firebase 초기화
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // 앱 실행
  runApp(AuthAndDatabaseExample());
}

class AuthAndDatabaseExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth & Database Example',
      home: LoginForm(),
    );
  }
}

class Todo {
  final String todo;
  final DateTime timestamp;
  final Timestamp? timestampChk;

  Todo({
    required this.todo,
    required this.timestamp,
    this.timestampChk,
  });

  // factory Todo.fromMap(Map<String, dynamic> map) {
  //   return Todo(
  //     todo: map['todo'],
  //     timestamp: map['timestamp'].toDate()
  //   );
  // }
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      todo: map['todo'],
      timestamp: map['timestamp'] != null ? map['timestamp'].toDate() : null,
    );
  }
}
