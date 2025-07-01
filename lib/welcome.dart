import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Welcome", style: TextStyle(fontSize: 30)),
              SizedBox(height: 100),
              Image(
                image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/011/432/528/small/enter-login-and-password-registration-page-on-screen-sign-in-to-your-account-creative-metaphor-login-page-mobile-app-with-user-page-flat-illustration-vector.jpg",
                ),
              ),
              SizedBox(height: 30),

              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page3()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page2()),
                    );
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,side: BorderSide(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
