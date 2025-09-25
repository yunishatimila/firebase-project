import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/auth/pages/signup.dart';
import 'package:flutter_application_3/features/auth/provider/auth_provider.dart';
import 'package:flutter_application_3/features/category/pages/homepagee.dart';
import 'package:flutter_application_3/features/core/utils.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isobscure = true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = context.read<AuthProvider>();
      provider.addListener(() {
        if (provider.statusUtils == StatusUtils.success) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Success")));
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (_) => Homepagee()), (route) => false);
        }
        if (provider.statusUtils == StatusUtils.error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Error")));
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) {
            if (provider.statusUtils == StatusUtils.loading) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: LoadingAnimationWidget.dotsTriangle(
                        color: Colors.black, size: 50),
                  ),
                ],
              );
            }
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                            height: 120,
                            width: 160,
                            decoration: BoxDecoration(
                                // border: Border.all(color: Colors.grey),
                                color: Colors.white),
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
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Getting Started..!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Create an account to continue all your courses",
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
                            Icons.check_circle_outline,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Agree to terms and conditions",
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
                            provider.login(email, password);
                          },
                          child: Text(
                            "Sign in",
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
                          padding: EdgeInsets.zero,
                          minimumSize: Size(40, 40),
                          shape: CircleBorder(),
                          backgroundColor: Colors.white,
                          elevation: 2,
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
                          padding: EdgeInsets.zero,
                          minimumSize: Size(40, 40),
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
                      Text("Already have an account?"),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Signup())),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 0, 140, 255)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
