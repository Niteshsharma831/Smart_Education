import 'package:flutter/material.dart';

class LoginOptionScreen extends StatelessWidget {
  const LoginOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 13, 79),
        foregroundColor: Colors.white,
        title: const Text("Welcome To PeakPath"),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;

            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Applogo.png",
                      width: isMobile ? 350 : 600,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Choose Your Role",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            isMobile ? constraints.maxWidth * 0.9 : 300, 50),
                        backgroundColor: const Color.fromARGB(255, 13, 13, 79),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "Dashboard");
                      },
                      child: const Text("Student",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 40),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                            isMobile ? constraints.maxWidth * 0.9 : 300, 50),
                        backgroundColor: const Color.fromARGB(255, 13, 13, 79),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "loginPage");
                      },
                      child: const Text("Mentor",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "assets/tree.png",
                      height: 80,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Admin",
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
