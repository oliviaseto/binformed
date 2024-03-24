import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String formattedDate = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "$formattedDate", 
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
              child: const Text('Your Stats', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: size.height * .5,
            ),
          ],
        ),
      )
    );
  }

  @override
  void initState() {
    super.initState();
    // Get today's date and format it
    formattedDate = _getFormattedDate(DateTime.now());
  }

  String _getFormattedDate(DateTime dateTime) {
    // Format the date as desired
    return '${dateTime.month}/${dateTime.day}/${dateTime.year}';
  }
}