import 'package:binformed/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String formattedDate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                formattedDate, 
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
                fontSize: 20.0,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0), 
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                                child: Text(
                                  "TOTAL\nITEMS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                                child: Text(
                                  "251",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16), // Add space between the containers
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: CircleAvatar(
                            radius: 30,
                            child: Image.asset("assets/images/streak_icon.png"),
                            backgroundColor: Constants.primaryColor,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          child: Text(
                            "18",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: 
            // ),
          ],
        ),
      ),
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
