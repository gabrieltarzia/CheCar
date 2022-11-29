import 'package:car_review/app/home/home.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final obscurePassWord = true.obs;

  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(height: 122),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('lib/assets/images/Checar.png'),
              ),
              SizedBox(height: 48),
              Container(
                width: 524,
                child: Column(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Times New Roman',
                          fontSize: 16),
                    ),
                    SizedBox(height: 18),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.amber))),
                    ),
                    SizedBox(height: 54),
                    Text(
                      'Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Times New Roman',
                          fontSize: 16),
                    ),
                    SizedBox(height: 18),
                    Obx(() {
                      return TextField(
                        obscureText: obscurePassWord.value,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            suffixIcon: _obscurePassword(obscurePassWord.value),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.5, color: Colors.amber))),
                      );
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                  onPressed: () {
                   /* Get.snackbar('Error', 'Invalid user',
                        colorText: Colors.amber,
                        backgroundColor: Colors.grey,
                        icon: const Icon(Icons.error),
                        snackStyle: SnackStyle.GROUNDED);*/
                        Get.to(const HomeView());
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      );

  _obscurePassword(bool value) => IconButton(
      onPressed: () {
        obscurePassWord.value = !obscurePassWord.value;
      },
      icon: obscurePassWord.value
          ? const Icon(Icons.visibility_off, color: Colors.amber)
          : const Icon(Icons.visibility, color: Colors.amber));
}