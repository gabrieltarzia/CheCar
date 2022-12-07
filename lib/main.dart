import 'package:car_review/app/views/login/login.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/Bindings/initial.bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      title: 'Checar',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginView(),
    );
  }
}
