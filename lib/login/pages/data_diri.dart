// ignore_for_file: unnecessary_new, unused_local_variable

import 'package:flutter/material.dart';
import 'package:login_page/login/components/background.dart';



void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Pejuang Skripsi dan Tugas Akhir",
    home: BelajarForm(),
  ));
}

class BelajarForm extends StatefulWidget {
  const BelajarForm({Key? key}) : super(key: key);

  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double nilaiSlider = 1;
    bool nilaiCheckBox = false;
    bool nilaiSwitch = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Mahasiswa'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Rachma Novita Anggreani",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Aisyah Ulil Maulina",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Aria Putra Pamungkas",
                      icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                RaisedButton(
                  child: const Text(
                    "Kembali",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}