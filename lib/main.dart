//import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:test_shared_preference_use/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _userNameController = TextEditingController();
  //INFORMATION
  //Defining default position of the RadioListTile button
  Gender? _selectedGender = Gender.female;
  //INFORMATION

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'User Settings',
          ), //Text
        ), //AppBar
        body: ListView(
          children: [
            ListTile(
              title: TextField(
                controller: _userNameController,
                decoration: const InputDecoration(
                  labelText: 'Username:',
                ), //InputDecoration
              ), //TextField
            ), //ListTile
            //INFORMATION
            //How to write the radioListTile code with "enum" is defined below:
            RadioListTile<Gender>(
              title: const Text('Female'),
              value: Gender.female,
              groupValue: _selectedGender,
              onChanged: (Gender? newValue) => setState(() {
                _selectedGender = newValue;
              }),
            ), //RadioListTile
            //INFORMATION
            RadioListTile<Gender>(
              title: const Text('Male'),
              value: Gender.male,
              groupValue: _selectedGender,
              onChanged: (Gender? newValue) => setState(() {
                _selectedGender = newValue;
              }),
            ), //RadioListTile
            RadioListTile<Gender>(
              title: const Text('Other'),
              value: Gender.other,
              groupValue: _selectedGender,
              onChanged: (Gender? newValue) => setState(() {
                _selectedGender = newValue;
              }),
            ), //RadioListTile
          ],
        ), //ListView
      ), //Scaffold
    ); //MaterialApp
  }
}
