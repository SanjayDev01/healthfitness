import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:healthfitness/model/feelings_history_model.dart';
import 'package:healthfitness/services/httpservice.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class FeelingsHistory extends StatefulWidget {
  const FeelingsHistory({Key? key}) : super(key: key);

  @override
  State<FeelingsHistory> createState() => _FeelingsHistoryState();
}

class _FeelingsHistoryState extends State<FeelingsHistory> {
  FeelingsHistoryModel? model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    try {
      EasyLoading.show(status: 'Loading...');
      Map data = {
        "user_id": 3206161992,
        "feeling_date": "15-04-2002",
      };
      var res = (await HttpService.hPost(
        "https://www.qubehealth.com/qube_services/api/testservice/getListOfUserFeeling",
        data,
      ));
      setState(() {
        model = FeelingsHistoryModel.fromJson(jsonDecode(res.data));
      });

      print(jsonDecode(res.data));
      EasyLoading.dismiss();
    } catch (e) {
      print(e);
      EasyLoading.dismiss();
    }
  }

  void _launchUrl() async {
    if (!await launchUrl(Uri.parse(model!.data.videoArr.first.youtubeUrl))) {
      throw 'Could not launch ${model!.data.videoArr.first.youtubeUrl}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: HexColor("#FBFBFC"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                    const Text(
                      "Your Feelings History",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "SFPro",
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "Your feelings from last 30 days",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "SFPro",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 7.5 + 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Energetic ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: HexColor("#85C454"),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/emojis/energetic.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Energetic",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Sad ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/sad.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Sad",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Happy ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/happy.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Happy",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Angry ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/angry.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Angry",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Calm ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/calm.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Calm",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "${model?.data.feelingPercentage.Bored ?? 0}%",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/bored.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Bored",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.5),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 40,
                              decoration: BoxDecoration(
                                color: HexColor("#F1F2F3"),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Expanded(
                                    child: Center(
                                      child: Text(
                                        "0%",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "SFPro",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#85C454"),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      "assets/emojis/love.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Love",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SFPro",
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.2,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 15,
                  ),
                  child: Container(
                    height: 24,
                    width: 78,
                    decoration: BoxDecoration(
                      color: HexColor("#C6E5F7"),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "10 Jun, 2021",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "SFPro",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 72,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 70,
                        width: 40,
                        decoration: BoxDecoration(
                          color: HexColor("#4F4F4F"),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Mo",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#F1F2F3")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Tu",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "We",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Th",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "13",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Fr",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "14",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Sa",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11, right: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Su",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "SFPro",
                                      color: HexColor("#A7A7A7")),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "16",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: "SFPro",
                                    color: HexColor("#121212")),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 0.2,
                  child: Container(
                    color: HexColor("#000000"),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "9 AM - 12 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "SFPro",
                        color: HexColor("#000000"),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Image.asset(
                      "assets/emojis/calm.png",
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Calm",
                      style: TextStyle(
                        fontFamily: "SFPro",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "9 AM - 12 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "SFPro",
                        color: HexColor("#000000"),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Image.asset(
                      "assets/emojis/bored.png",
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Bored",
                      style: TextStyle(
                        fontFamily: "SFPro",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "9 AM - 12 PM",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "SFPro",
                        color: HexColor("#000000"),
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Image.asset(
                      "assets/emojis/happy.png",
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Happy",
                      style: TextStyle(
                        fontFamily: "SFPro",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Container(color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 10,
                    top: 30,
                  ),
                  child: Text(
                    model!.data.videoArr.isNotEmpty
                        ? model!.data.videoArr.first.title
                        : "You May Find This Interesting",
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "SFPro",
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: Text(
                    model!.data.videoArr.isNotEmpty
                        ? model!.data.videoArr.first.description
                        : "",
                    style: const TextStyle(fontFamily: "SFPro", fontSize: 14),
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: _launchUrl,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 248,
                              height: 148,
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/images/image1.png",
                                fit: BoxFit.fill,
                                scale: 0.2,
                              ),
                            ),
                            Image.asset("assets/images/youtube.png"),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 248,
                            height: 148,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/image2.png",
                              fit: BoxFit.fill,
                              scale: 0.2,
                            ),
                          ),
                          Image.asset("assets/images/youtube.png"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
