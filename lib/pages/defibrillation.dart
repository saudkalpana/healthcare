import 'package:flutter/material.dart';

import '../imageurl/image.dart';

class Defibrillationinfo extends StatelessWidget {
  const Defibrillationinfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Column(
          children:  [
            Text(
              "AED",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "(Automated External Defibrillator)",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(children: [
          const Row(
            children:  [
              Text(
                "Steps",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 5),
            height: screenh * 0.07,
            width: screenw * 1,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.6),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(20))),
            child: const Row(
              children:  [
                Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 25),
                Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Text("Turn on the AED.",
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170),
                  child: Icon(Icons.power_settings_new_outlined),
                ),
              ],
            ),
          ),
          Container(
            //padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: screenh * 0.35,
            width: screenw * 1,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.6),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(20))),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 200),
                  child: Text(
                    "2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apply the AED pads.",
                          style: TextStyle(fontSize: 10)),
                      SizedBox(height: 15),
                      Text(
                          "Remove any clothing, jewellery,\nand medical patches that could\ninterfere with pad placement.",
                          style: TextStyle(fontSize: 10)),
                      SizedBox(height: 15),
                      Text("If the chest is wet,dey the skin.",
                          style: TextStyle(fontSize: 10)),
                      SizedBox(height: 15),
                      Text(
                          "For a child or baby,use child or\nbaby pads or ensure that the pads\nare 2.5cm(1 in) apart.Place one\non the front ans one on the back if\nnecessary.",
                          style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      height: screenh * 0.14,
                      width: screenw * 0.35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(pads)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                    ),
                    Container(
                      height: screenh * 0.14,
                      width: screenw * 0.38,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(child)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5),
                height: screenh * 0.29,
                width: screenw * 0.5,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: Text("3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 10, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text("Follow the AED's automated\nprompts.",
                                  style: TextStyle(fontSize: 10)),
                              SizedBox(height: 15),
                              Text(
                                  "It the AED prompts you to do so,\nensure that no one is touching\nthe person ans deliver a shock.",
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: screenh * 0.13,
                      width: screenw * 0.45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(aed)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
               // padding: const EdgeInsets.only(left: 10),
                height: screenh * 0.29,
                width: screenw * 0.43,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const Row(
                      children:  [
                        Text(
                          "4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text(
                              "Continue CPR,starting with\nchest compressions.",
                              style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: screenh * 0.18,
                        width: screenw * 0.39,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(cmprs)),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow)),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
