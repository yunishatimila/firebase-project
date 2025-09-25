import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/pages/category.dart';
import 'package:flutter_application_3/features/category/pages/course.dart';
import 'package:flutter_application_3/features/category/pages/enroll.dart';
import 'package:flutter_application_3/features/category/pages/mentors_page.dart';
import 'package:flutter_application_3/features/category/provider/category_provider.dart';
import 'package:flutter_application_3/features/profile/pages/Notice.dart';
import 'package:provider/provider.dart';

class Homepagee extends StatefulWidget {
  const Homepagee({super.key});

  @override
  State<Homepagee> createState() => _HomepageeState();
}

class _HomepageeState extends State<Homepagee> {
  @override
  void initState() {
    Future.microtask(() {
      fetchMentors();
    });

    super.initState();
  }

  void fetchMentors() {
    context.read<CategoryProvider>().fetchMentors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Hi, ALEX",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "What Would you like to learn Today?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                      Text(
                        "Search Below.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Notice()));
                    },
                    child: Icon(
                      Icons.circle_notifications_outlined,
                      size: 44,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(40, 48),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 2),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 24,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Search for..",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[400]),
                    ),
                    SizedBox(
                      width: 215,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 82, 152, 209),
                            borderRadius: BorderRadius.circular(4)),
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                          size: 24,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                  height: 214,
                  width: 500,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(36)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "25% OFF*",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Today's Special",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Get a Discount for Every",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Course Order only Valid for ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Today..!",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Category()));
                        },
                        child: Row(
                          children: [
                            Text(
                              "See All",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "3D Design",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500]),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Arts & Humanities",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Graphic Design",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500]),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 44,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Popular Courses",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Course()));
                        },
                        child: Row(
                          children: [
                            Text(
                              "See All",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
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
                                  color: Colors.black),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 8, 177, 154)),
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
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Enroll()));
                      },
                      child: Container(
                        height: 240,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  child: Image.network(
                                    "https://img.freepik.com/free-vector/grey-hexagons-black-background_78370-2098.jpg?semt=ais_incoming&w=740&q=80",
                                    height: 134,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(16),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Graphic Design",
                                            style:
                                                TextStyle(color: Colors.orange),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.bookmark_remove_outlined,
                                            color: Colors.green,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Graphic Design Advanced",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Text(
                                            "850/-",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blue),
                                          ),
                                          SizedBox(width: 12),
                                          Text(
                                            "|",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 16),
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 240,
                      width: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                                child: Image.network(
                                  "https://img.freepik.com/free-vector/grey-hexagons-black-background_78370-2098.jpg?semt=ais_incoming&w=740&q=80",
                                  height: 134,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(4),
                                    bottomRight: Radius.circular(16),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Graphic Design",
                                          style:
                                              TextStyle(color: Colors.orange),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.bookmark_remove_outlined,
                                          color: Colors.green,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Graphic Design Advanced",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          "850/-",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.blue),
                                        ),
                                        SizedBox(width: 12),
                                        Text(
                                          "|",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(width: 16),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Top Mentors",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Course()));
                    },
                    child: Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Consumer<CategoryProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: provider.mentorsList.length,
                      itemBuilder: (context, index) {
                        final mentors = provider.mentorsList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(mentors["name"]),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
