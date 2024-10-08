import 'package:flutter/material.dart';

class LoginAnimation extends StatefulWidget {
  const LoginAnimation({super.key});

  @override
  LoginAnimationState createState() => LoginAnimationState();
}

class LoginAnimationState extends State<LoginAnimation> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(controller);
    slideAnimation = Tween<Offset>(begin: const Offset(-1, -1), end: const Offset(0,0)).animate(CurvedAnimation(parent: controller, curve: Curves.ease));
    scaleAnimation = Tween<double>(begin: 0,end: 1).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: fadeAnimation,
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            SlideTransition(
              position: slideAnimation,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: ScaleTransition(
                  scale: scaleAnimation,
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          label: Text("Username")
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            label: Text("Password")
                        ),
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ), child:  const Text("Login",style:  TextStyle(
                          color: Colors.white
                      )),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

