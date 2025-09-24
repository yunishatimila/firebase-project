import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Icon(Icons.arrow_back),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(80)),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mary Jones",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Graphic Designer at Google",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "26",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "15800",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Students",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "8750",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Ratings",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[50]),
                    onPressed: () {},
                    child: Container(
                      height: 52,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "Follow",
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
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700]),
                    onPressed: () {},
                    child: Container(
                      height: 52,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "Message",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.black,
                        width: 0.05,
                      )),
                      height: 88,
                      width: 340,
                      child: Center(
                        child: Text(
                          "But can one now do so much as they did in the past? Nor am I unaware that there is utility in history, not only pleasure.",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 560,
                      width: 340,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 0.1, // Border width
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 0.1)),
                                  height: 52,
                                  width: 171,
                                  child: Center(
                                      child: Text(
                                    "Courses",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ))),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      border: Border.all(
                                          color: Colors.black, width: 0.1)),
                                  height: 52,
                                  width: 168,
                                  child: Center(
                                      child: Text(
                                    "Ratings",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ))),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Mary",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Container(
                                        width: 56,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text("4.2")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "This course has been very useful. Mentor ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "was well spoken totally loved it. ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 24),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.heart_broken,
                                              color: Colors.red, size: 16),
                                          SizedBox(width: 4),
                                          Text(
                                            "760",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            "2 weeks ago",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Divider(),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Mary",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Container(
                                        width: 56,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text("3.9")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "This course has been very useful. Mentor ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "was well spoken totally loved it. ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 24),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.heart_broken_outlined,
                                              color: Colors.black, size: 16),
                                          SizedBox(width: 4),
                                          Text(
                                            "500",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            "5 days ago",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Divider(),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Mary",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Container(
                                        width: 56,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text("4.8")
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "This course has been very useful. Mentor ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "was well spoken totally loved it. ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 24),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.heart_broken,
                                              color: Colors.red, size: 16),
                                          SizedBox(width: 4),
                                          Text(
                                            "347",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 16),
                                          Text(
                                            "3 days ago",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Divider(),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
