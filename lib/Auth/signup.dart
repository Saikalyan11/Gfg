import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_app/Navigation/Home.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  void SignupUser() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 47, 162, 185),
          ),
        );
      },
    );
    if (passwordcontroller.text == confirmpasswordcontroller.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      Navigator.pop(context);
      Get.off(Home());
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Column(
              children: [
                Text(
                  'Let\'s Create an Account for You',
                  style: GoogleFonts.acme(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 70,
                    child: TextFormField(
                      controller: namecontroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'FullName',
                        enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.person_2_outlined,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 70,
                    child: TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'EMAIL',
                        enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                //  Password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 70,
                    child: TextFormField(
                      controller: passwordcontroller,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Password',
                        enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color.fromARGB(255, 254, 254, 254)),
                        ),
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      validator: (val) {
                        if (val?.length == 0) {
                          return "Pasword contains atleast 8 characters";
                        } else {
                          return null;
                        }
                      },
                      style: new TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SizedBox(
                    height: 70,
                    child: TextFormField(
                      controller: confirmpasswordcontroller,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Confirm Password',
                        enabledBorder: new OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color.fromARGB(255, 254, 254, 254)),
                        ),
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      validator: (val) {
                        if (val?.length == 0) {
                          return "Pasword contains atleast 8 characters";
                        } else {
                          return null;
                        }
                      },
                      style: new TextStyle(
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),

                // Button
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () => SignupUser(),
                  child: Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 162, 185),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.acme(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
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
