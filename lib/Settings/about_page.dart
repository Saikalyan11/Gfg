import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class About_page extends StatefulWidget {
  const About_page({super.key});

  @override
  State<About_page> createState() => _About_pageState();
}

class _About_pageState extends State<About_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: new Icon(
                              Icons.arrow_back,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "About App",
                            style: GoogleFonts.acme(
                                fontSize: 20, fontWeight: FontWeight.w100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
