import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Icon(Icons.arrow_back), Text("All Category")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "All Category",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
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
                    SizedBox(
                      width: 16,
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
                          Icons.search,
                          color: Colors.white,
                          size: 24,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://t3.ftcdn.net/jpg/16/77/03/88/360_F_1677038822_a2NFL0A5lH4PmEsLw7S4MnxcQWON3Pd0.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "3D Design",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/thumbnails/005/570/717/small_2x/girl-graphic-designer-digital-drawing-tool-flat-design-illustration-vector.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Graphic Design",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/005/283/061/non_2x/web-development-concept-in-3d-isometric-design-designer-works-with-code-interface-engineering-programming-settings-and-optimizes-pages-template-with-people-scene-illustration-for-webpage-vector.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Web Development",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://shardaproduction.com.np/wp-content/uploads/2024/01/Benefits-of-SEO.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "SEO & Marketing",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://www.oxfordhomestudy.com/images/blog/1536752725Accountant.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Finance & Accounting",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://media.istockphoto.com/id/1396840226/vector/mind-growth-icon-metaphor-for-growth-of-personality-as-plant-self-improvement-self.jpg?s=612x612&w=0&k=20&c=p6cRvgmc_zKJ2oX0yzAedZWaX-ouZspkSFOjbVLPl7Q=",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "SEO & Marketing",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://file.go.gov.sg/genai-office-productivity.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Office Productivity",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Image.network(
                              "https://img.freepik.com/free-vector/human-resources-hr-typographic-header-idea-recruitment-job-management-hr-manager-interviewing-job-candidate-flat-vector-illustration_613284-1240.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "HR Management",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
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
