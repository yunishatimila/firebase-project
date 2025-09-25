import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/category/pages/mentor.dart';
import 'package:flutter_application_3/features/category/pages/pages.dart';
import 'package:flutter_application_3/features/category/provider/category_provider.dart';
import 'package:provider/provider.dart';

class MentorsPage extends StatefulWidget {
  const MentorsPage({super.key});

  @override
  State<MentorsPage> createState() => _MentorsPageState();
}

class _MentorsPageState extends State<MentorsPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _specialController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              width: 12,
            ),
            Text("Add MentorsPage")
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Consumer<CategoryProvider>(
              builder: (context, provider, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mentor Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Name"),
                    controller: _nameController,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Age",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "18"),
                    controller: _ageController,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "abc@gmail.com"),
                    controller: _emailController,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Phone number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "9841234567"),
                    controller: _phoneController,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Specialist",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Flutter"),
                    controller: _specialController,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Bio",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Flutter developer"),
                    controller: _bioController,
                  ),
                  SizedBox(
                    height: 28,
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
                        Mentors mentor = Mentors(
                          name: _nameController.text.trim(),
                          age: int.tryParse(_ageController.text.trim()),
                          email: _emailController.text.trim(),
                          number: int.tryParse(
                            _phoneController.text.trim(),
                          ),
                          special: _specialController.text.trim(),
                          bio: _bioController.text.trim(),
                        );
                        provider.addMentor(mentor);
                      },
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Pages())),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
