import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/buttons/custom_rounded_button.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.white,
              Colors.green,
            ])),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 46,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.sports_soccer_rounded,
                      size: 65,
                      color: Colors.green,
                    ),
                    Text(
                      "Futsals",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Text(
                    "Futsal for health",
                    style: TextStyle(color: Colors.green.shade600),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 61,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
                 TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromARGB(255, 230, 243, 237),
                        decoration: const InputDecoration(
                        hintText: 'Username',
                        labelText: 'Username',
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.supervised_user_circle),
                        prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                        suffixIconColor: Colors.green,
                     ),
                    ),
                const SizedBox(
                  height: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
                TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromARGB(255, 230, 243, 237),
                        decoration: const InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email Address',
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                     ),
                    ),
                const SizedBox(
                  height: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
                TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromARGB(255, 230, 243, 237),
                        decoration: const InputDecoration(
                        hintText: 'Contact',
                        labelText: 'Contact Number',
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.contact_emergency),
                        prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                     ),
                    ),
                const SizedBox(
                  height: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
               TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromARGB(255, 230, 243, 237),
                        decoration: const InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                     ),
                    ),
                const SizedBox(
                  height: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                ),
               TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Color.fromARGB(255, 230, 243, 237),
                        decoration: const InputDecoration(
                        hintText: 'Confirm Password',
                        labelText: 'Confirm Password',
                        alignLabelWithHint: false,
                        prefixIcon: Icon(Icons.password),
                        prefixIconColor: Color.fromARGB(255, 0, 0, 0),
                     ),
                    ),
                const SizedBox(
                  height: 46.0,
                ),
                CustomRoundedButton(
                  onTap: () {
                    Get.toNamed("login");
                  },
                  color: Color.fromARGB(255, 243, 241, 241),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text(
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                              ),
                              "Register",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Already have an account? ",
                        style: Theme.of(context).textTheme.titleMedium),
                    TextButton(
                      onPressed: () {
                        Get.toNamed("login");
                      },
                      child: Text(
                        "Login",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 25, 42, 233),
                                ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
