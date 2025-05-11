// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_dti_project/views/login_ui.dart';
import 'package:flutter_dti_project/views/signup_ui.dart';

class WelcomeUI extends StatelessWidget {
  const WelcomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/img.png',
                width: 350,
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'WELCOME TO DTI',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Let\'s Get Started :)',
              ),
              Text(
                'By GeorgeSter',
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      //ย้อนกลับได้
                      Navigator.push(
                        // context คือ หน้าปัจจุบัน
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(
                          130,
                          40,
                        ),
                        side: BorderSide(
                          color: Colors.black, // เปลี่ยนสีขอบเป็นสีดำ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                       //ย้อนกลับได้
                      Navigator.push(
                        // context คือ หน้าปัจจุบัน
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUI(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 40),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        )),
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
