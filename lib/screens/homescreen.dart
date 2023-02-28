import 'package:flutter/material.dart';
import 'package:medapp/screens/searchscreen.dart';

import '../widgets/action_container_large.dart';
import '../widgets/action_container_small.dart';


class HomeScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Medcab',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[500],
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children:  const [
                SingleChildScrollView(
                  child: Expanded(
                    child: ActionContainerLarge(
                      img: 'assets/images/ambulance.png',
                      title: 'Ambulance 24',
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ActionContainerLarge(
                      img: 'assets/images/medicnes.png', title: 'Package'),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/images/hospital.png',
                    title: 'Hospital',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/images/Emergency.png',
                    title: 'Urgent',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/images/Checkup.png',
                    title: 'health',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ActionContainerSmall(
                    img: 'assets/images/helpline.png',
                    title: 'Help support',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                      fullscreenDialog: true),
                );
              },
              autofocus: false,
              showCursor: false,
              decoration: InputDecoration(
                  hintText: 'Where To?',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 24),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: InputBorder.none),
            )
          ],
        ),
      ),
    );
  }
}