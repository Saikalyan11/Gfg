import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 185, 118, 47),
        title: Center(child: Text('Diet Reco')),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                '\Good Day',
                style:
                    GoogleFonts.acme(fontWeight: FontWeight.w300, fontSize: 50),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 170, 170, 170),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 38),
                          child: Text(
                            'Today\'s Diet Plan',
                            style: GoogleFonts.aBeeZee(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 160,
                            height: 50,
                            child: Center(
                              child: Text(
                                'BreakFast',
                                style: GoogleFonts.aBeeZee(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 30),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 160,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Lunch',
                                style: GoogleFonts.aBeeZee(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 30),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 160,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Dinner',
                                style: GoogleFonts.aBeeZee(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 30),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
