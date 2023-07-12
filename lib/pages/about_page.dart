import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const Text(
                'About Supervisor',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  text:
                      "Engr. Mahmud Ja'afar is A Graduate Of B'Eng. Electrical Engineering, in Ahmadu Bello University (ABU) Zaria, in The Year 2013. He went Further To Obtain He's Masters Degree MSc.in Telecommunications Engineering in The Same ABU Zaria, in The Year 2021. He's Currently A Lecturer in The Federal Polytechnic Bida, Lecturing In Both Electrical Electronics Engineering Department & Computer Engineering Department. And inclusively Lectures Affiliated Degree Students of Electrical Electronics Engineering Department.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'About Student',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  text:
                      "Adesina Emmanuel Shola is A DE - Final Year Student Of Federal University of Technology Minna Affiliated Degree Programs in The Federal Polytechnic Bida Campus. After Completing He's Nathaniel Diploma in Electrical Electronics Engineering In The Federal Polytechnic Bida - Niger State, Nigeria with an Upper Credit in The Year 2017. After which he went for A Year IT' in Port Harcourt where he got much work experience Before Applying for Direct Entry. He's work Experience is Based on Communication Systems and Channels. With knowledge on Satellite installation, CCTV, Public Address System, Little on - Fire Alarm And More Knowledge on Fibre-To-The-Home (FTTH). He's Currently working on He's final year Project to fully obtain He's B'Eng",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
