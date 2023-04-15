import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hackathon_app/Navigation/editprofilepage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Color.fromARGB(255, 185, 118, 47),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 100.0,
          ),
          const SizedBox(height: 10),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Software Developer',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            height: 30,
          ),
          const ListTile(
            leading: Icon(Icons.email),
            title: Text('johndoe@gmail.com'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 555-555-5555'),
          ),
          const ListTile(
            leading: Icon(Icons.height),
            title: Text('167cm'),
          ),
          const ListTile(
            leading: Icon(Icons.monitor_weight),
            title: Text('60kg'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 555-555-5555'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 555-555-5555'),
          ),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('+1 555-555-5555'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Get.to(Editprofilepage());
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 185, 118, 47),
              ),
            ),
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
