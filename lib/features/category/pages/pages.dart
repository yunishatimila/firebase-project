import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/pages/forms.dart';
import 'package:flutter_application_3/features/category/pages/mentors.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PageState();
}

class _PageState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 8,
            ),
            Text("Add Page"),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                SizedBox(
                  width: 36,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Forms())),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Image.network(
                          "https://thumbs.dreamstime.com/b/education-training-course-online-study-tutorials-e-learning-smart-knowledge-cartoon-miniature-illustration-vector-graphic-135075825.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Add Courses",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700]),
                    )
                  ],
                ),
                SizedBox(
                  width: 36,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Mentors())),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Image.network(
                          "https://cdn.vectorstock.com/i/500p/52/74/mentor-assistance-visualization-of-coaching-vector-51615274.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Add Mentors",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700]),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
