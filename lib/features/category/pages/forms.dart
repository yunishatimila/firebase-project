import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/provider/category_provider.dart';
import 'package:provider/provider.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final TextEditingController _category = TextEditingController();
  final TextEditingController _rating = TextEditingController();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _classes = TextEditingController();
  final TextEditingController _durationHours = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final TextEditingController _tab = TextEditingController();
  final TextEditingController _complains = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Categories"),
      ),
      body: Consumer<CategoryProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.arrow_back),
                  //     SizedBox(
                  //       width: 8,
                  //     ),
                  //     Text(
                  //       "Add Categories",
                  //       style: TextStyle(
                  //           fontSize: 20, fontWeight: FontWeight.w700),
                  //     ),
                  //   ],
                  // ),

                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Graphic Design"),
                    controller: _category,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Rating",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "42"),
                    controller: _rating,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Design Principle"),
                    controller: _title,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Classes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "21"),
                    controller: _classes,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Duration Hours",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Graphic Design"),
                    controller: _durationHours,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "42"),
                    controller: _price,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Tab",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Design Principle"),
                    controller: _tab,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Complains",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            "Write your complains here (minimum 10 characters)"),
                    controller: _complains,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width * .1, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                          ),
                          padding: EdgeInsets.zero,
                          elevation: 4),
                      onPressed: () {
                        provider.category(
                            _category.text.trim(),
                            _rating.text.trim(),
                            _title.text.trim(),
                            _classes.text.trim(),
                            _durationHours.text.trim(),
                            _price.text.trim(),
                            _tab.text.trim(),
                            _complains.text.trim());
                      },
                      child: Container(
                          height: 60,
                          width: 340,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 9, 114, 201)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
