import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_app/Settings/Theme_provider.dart';
import 'package:hackathon_app/Settings/about_page.dart';
import 'package:provider/provider.dart';

class Settingspage extends StatefulWidget {
  const Settingspage({super.key});

  @override
  State<Settingspage> createState() => _SettingspageState();
}

class _SettingspageState extends State<Settingspage> {
  @override
  bool isteme = false;
  bool perm = false;

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
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Settings',
                            style: GoogleFonts.acme(
                              fontSize: 30,
                              fontWeight: FontWeight.w100,
                              color: Color.fromARGB(255, 185, 118, 47),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          "Dark Theme",
                          style: GoogleFonts.acme(fontSize: 20),
                        ),
                      ),
                      Consumer<Theme_provider>(
                        builder: (context, provider, child) {
                          return Switch(
                            value: provider.isteme,
                            onChanged: (newvalue) {
                              provider.changeTheme(newvalue);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      About_page(),
                    );
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: Text("About App",
                                style: GoogleFonts.acme(fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Out',
                      style: GoogleFonts.acme(
                        fontSize: 20,
                        color: Color.fromARGB(255, 185, 118, 47),
                      ),
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
