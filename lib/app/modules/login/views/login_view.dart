import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:futsals/app/widgets/buttons/custom_rounded_button.dart';
import 'package:get/get.dart';
import '../../../../utils/config.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  
  get kRoundedTextFormFieldBorder => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.green,
            ]
          ),
      ),
        
          
        child: SafeArea(
          child:Padding(
            padding:const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.sports_soccer_rounded,
                        size:65,
                        color:Colors.green,
                      ),
                      Text(
                        "Futsals",
                        textAlign: TextAlign.center,
                        style:Theme.of(context).textTheme.headline2?.copyWith(
                              color: Colors.green,
                              fontWeight:FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Futsals For Heath",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.green,
                      )
                    ),
                  ),
                  const SizedBox(
                    height:100.0,
                  ),
                 
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
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
                      height: 12.0,
                    ),
                    
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
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
                        suffixIconColor: Colors.green,
                     ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                   CustomRoundedButton(
                    onTap: () {
                      Get.toNamed("home");
                    },
                    color: Color.fromARGB(255, 224, 220, 220),
      
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Continue",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Row(
                      children: const [
                        Expanded(child: Divider()),
                        Text("OR"),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                 CustomRoundedButton(
                    color: Colors.green,                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.google,
                          color: Color.fromARGB(204, 204, 22, 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Login with google",
                            style:
                                Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
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
                       Text("Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black,
                      ),
                      ),
                      TextButton(onPressed: (){
                        Get.toNamed('register');
                      },
                      child:  Text("Register",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Color.fromARGB(255, 33, 27, 220),
                      )

                      ),
                      ),
                      
                    ],
                  ),
                ],
              )
            )
            )
          ),
      ),
    );
  }
}
