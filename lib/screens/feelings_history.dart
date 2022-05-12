import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class FeelingsHistory extends StatefulWidget {
  const FeelingsHistory({Key? key}) : super(key: key);

  @override
  State<FeelingsHistory> createState() => _FeelingsHistoryState();
}

class _FeelingsHistoryState extends State<FeelingsHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                Center(
                  child: SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
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
                                          "30%",
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
                                    )),
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
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "10%",
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
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "40%",
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
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "1%",
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
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "30%",
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
                                    const Expanded(
                                      child: Center(
                                        child: Text(
                                          "30%",
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
                                          "30%",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
