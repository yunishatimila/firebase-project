import 'package:flutter/material.dart';

class Enroll extends StatefulWidget {
  const Enroll({super.key});

  @override
  State<Enroll> createState() => _EnrollState();
}

class _EnrollState extends State<Enroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.black),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Graphic Design",
                      style: TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Design Principles: Organizing ..",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            Text("4.2",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.play_circle_fill,
                            size: 16, color: Colors.grey),
                        SizedBox(width: 5),
                        Text("21 Class"),
                        SizedBox(width: 15),
                        Icon(Icons.schedule, size: 16, color: Colors.grey),
                        SizedBox(width: 5),
                        Text("42 Hours"),
                        SizedBox(width: 108),
                        Text(
                          "499/-",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(width: 2, color: Colors.blue),
                                ),
                              ),
                              child: Center(
                                  child: Text("About",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Center(
                                  child: Text("Curriculum",
                                      style: TextStyle(color: Colors.grey))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiit",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Graphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Instructor",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage("assets/instructor.jpg"), // your image
                    ),
                    SizedBox(width: 12),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Robert jr",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            Text("Graphic Design",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(
                          width: 172,
                        ),
                        Icon(
                          Icons.message_outlined,
                          color: Colors.grey[700],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // What You'll Get
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "What You'll Get",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.book_online_outlined,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "25 Lessons",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.desktop_mac_sharp,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Access Mobile, Desktop & TV",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Beginner Level",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.multitrack_audio_sharp,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Audio Book",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.accessible_forward_outlined,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Lifetime Access",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.quiz_outlined,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "100 Quizes",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.book_online_outlined,
                          size: 22,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Certificate of Completion",
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Container(
                width: 800,
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {},
                  child: Text("Enroll Course - 499/-",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
