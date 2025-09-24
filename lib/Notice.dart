import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
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
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Today",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.grid_view_outlined,
                          size: 32,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Category Course..!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "New the 3D Design Course is Availa..",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 32,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Category Course..!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "New the 3D Design Course is Availa..",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.width_wide_outlined,
                          size: 32,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today's Special Offers",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "You Have made a Coure Payment.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Yesterday",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 32,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit Card Connected.!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Credit Card has been Linked.!",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Nov 20, 2025",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.person_2_outlined,
                          size: 32,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Account Setup Successful.!",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Your Account has been Created.",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
