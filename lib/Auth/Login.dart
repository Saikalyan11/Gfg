import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_app/Auth/signup.dart';
import 'package:hackathon_app/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  void LoginUser() async {
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
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailcontroller.text,
      password: passwordcontroller.text,
    );
    Navigator.pop(context);
    Get.to(Home());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 340.0),
            child: Column(
              children: [
                Text(
                  'WELCOME BACK',
                  style: GoogleFonts.acme(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  height: 10,
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

                // Button
                SizedBox(
                  height: 15,
                ),

                GestureDetector(
                  onTap: () => LoginUser(),
                  child: Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 162, 185),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.acme(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                const Divider(
                  thickness: 2, // thickness of the line
                  indent: 20, // empty space to the leading edge of divider.
                  endIndent:
                      20, // empty space to the trailing edge of the divider.
                  color:
                      Colors.black, // The color to use when painting the line.
                  height: 20, // The divider's height extent.
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Don't Have an Account.?",
                        style: GoogleFonts.acme(
                          fontSize: 19,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () => Get.off(Signup()),
                      child: Center(
                        child: Text(
                          'Create One',
                          style: GoogleFonts.acme(
                            fontSize: 20,
                            color: Color.fromARGB(255, 150, 70, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
