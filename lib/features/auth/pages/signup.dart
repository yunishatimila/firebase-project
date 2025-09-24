import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/auth/pages/login.dart';
import 'package:flutter_application_3/features/auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isobscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Consumer<AuthProvider>(
            builder: (context, provider, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                            height: 120,
                            width: 160,
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.grey),
                                color: Colors.white10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRHrIaqvrGLrxqQOMwuXIIpL4i3md1EuiGxQ&s",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Sign up..!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Login to Your Account to Continue your Courses",
                        style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail_outline),
                        ),
                        controller: _emailController,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[100],
                            filled: true,
                            border: OutlineInputBorder(),
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isobscure = !isobscure;
                                  });
                                },
                                child: Icon(isobscure
                                    ? Icons.visibility_off
                                    : Icons.visibility))),
                        controller: _passwordController,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.square_outlined,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 114,
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 66),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              maximumSize: Size(double.infinity, 40)),
                          onPressed: () {
                            String? email = _emailController.text.trim();
                            String? password = _passwordController.text.trim();
                            provider.signup(email, password);
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(child: Text("Or continue with")),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // remove extra padding
                          minimumSize: Size(40, 40), // match container size
                          shape: CircleBorder(), // makes button circular
                          backgroundColor:
                              Colors.white, // optional, matches container color
                          elevation: 2, // optional shadow
                        ),
                        onPressed: () {},
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white),
                            child: ClipOval(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                      SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // remove extra padding
                          minimumSize: Size(40, 40), // match container size
                          shape: CircleBorder(), // makes button circular
                          backgroundColor:
                              Colors.white, // optional, matches container color
                          elevation: 2, // optional shadow
                        ),
                        onPressed: () {},
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white),
                            child: ClipOval(
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC_ps_PWPSsQ0ZeX7Zsqvtu_30qFYpdmW-0g&s",
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Login())),
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 0, 140, 255)),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
