import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Icon(Icons.arrow_back), Text("Popular courses")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 8, 177, 154)),
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "All",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 100,
                      decoration: BoxDecoration(
                          // color: Colors.green[400],
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "Graphic Design",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "3D Design",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "Arts & Humanities",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Graphic Design",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.orange[800]),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.bookmark_remove_rounded,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Graphic Design Advanced",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "7058/-",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 16),
                                      SizedBox(width: 4),
                                      Text(
                                        "4.2",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        "|",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(width: 16),
                                      Text(
                                        "7830 Std",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
