// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("App Data"),
      
    );
  }
}