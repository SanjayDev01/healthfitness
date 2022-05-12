// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthfitness/screens/feelings_history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: const Text(
            'HealthFitness',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey.shade400,
        ),
        body: Container(
          alignment: Alignment.center,
          child: FlatButton(
            onPressed: () {
              Get.to(const FeelingsHistory());
            },
            color: Colors.black38,
            autofocus: true,
            height: 50,
            clipBehavior: Clip.hardEdge,
            hoverColor: Colors.black,
            child: const Text(
              'Your Feelings History',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ));
  }
}
