import 'package:flutter/material.dart';
//import './form_basic.dart';
//import './form_validatios.dart';
//import './checkbox_page.dart';
//import './checkbox_list_page.dart';
//import './radiobutton_page.dart';
//import './switch_page.dart';
//import './datetimepicker_page.dart';
//import './form_feedback.dart';
import './form_signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const FormBasic(),
      //home: FormValidation(),
      //home: const CheckBoxPage(),
      //home: const CheckBoxListPage(),
      //home: const RadioButtonPage(),
      //home: const SwitchPage(),
      //home: const DateTimePickerPage(),
      //home: const FormFeedback(),
      home: const FormSignup(),
    );
  }
}
