import 'package:flutter/material.dart';

import '../imageurl/image.dart';
import 'cprinfo.dart';
import 'defibrillation.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 245, 247),
      body: Column(children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          height: screenh * 0.6,
          width: screenw * 1,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200)),
            image: DecorationImage(image: AssetImage(pic), fit: BoxFit.cover),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.keyboard_backspace_outlined),
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(screenw * 0.5, screenh * 0.11),
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Cprinfo()));
          },
          child: Row(
            children: [
              Container(
                height: screenh * 0.1,
                width: screenw * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(cpr)),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
              const SizedBox(width: 20),
              const Text(
                "CPR",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(screenw * 0.7, screenh * 0.1),
              backgroundColor: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Defibrillationinfo()));
          },
          child: Row(
            children: [
              Container(
                height: screenh * 0.09,
                width: screenw * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(defib)),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
              const SizedBox(width: 20),
              const Text("Defibrillation",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ]),
    );
  }
}
