import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

import '../imageurl/image.dart';
import '../pages/nextpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.blue.shade100],
                    begin: Alignment.topLeft)),
            //child: Image(image: AssetImage(imgs)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenh * 0.15, left: screenw * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome To Our Service",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Nextpage()));
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: screenh * 0.01),
                          height: screenh * 0.065,
                          width: screenw * 0.42,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue.shade600,
                                Colors.blue.shade900
                              ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Urgent Care",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: screenh * 0.6,
                  width: screenw * 1,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ecare Services",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Customecontainer(
                              imgss: AssetImage(url),
                            ),
                            Customecontainer(
                              imgss: AssetImage(url2),
                            ),
                            Customecontainer(
                              imgss: AssetImage(url3),
                              ontap: () {
                                _sendSMS();
                              },
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Text("Consult"),
                              ),
                              Text("First Aid"),
                              Text("Air Ambulance"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "About Us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {
                              launch(
                                  "https://nitin-pant44.github.io/medicopter/");
                            },
                            child: const Text(
                                "https://nitin-pant44.github.io/medicopter/")),
                        // const Text(
                        //     "https://nitin-pant44.github.io/medicopter/"),
                        const Text("CBEAS"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}





void _sendSMS() async {
  List<String> recipients = ["9848672161"];
  
  try {
    String send_result = await sendSMS(message: " EMERGENCY!", recipients: recipients);
    print(send_result);
  } catch (err) {
    print("Error sending SMS: $err");
  }
}

class Customecontainer extends StatelessWidget {
  const Customecontainer({super.key, this.ontap, required this.imgss});
  final ImageProvider<Object> imgss;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(
                  color:
                      const Color.fromARGB(255, 62, 144, 182).withOpacity(0.2)),
              borderRadius: BorderRadius.circular(70),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                image: imgss,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


