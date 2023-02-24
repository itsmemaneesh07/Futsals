import 'package:flutter/material.dart';
import 'package:futsals/app/widgets/buttons/custom_rounded_button.dart';

import 'package:get/get.dart';

import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  
  get kRoundedTextFormFieldBorder => null;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var booking;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Booking'.toUpperCase(),
        ),
        centerTitle: true,
        backgroundColor:Colors.green ,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 330,
              child: Image.asset(
                'assets/images/Futsals.jpg',
                fit: BoxFit.fill,
                ),
              
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                    Row(
                      children: [
                        Text(
                          "Websoft Futsal Pvt Ltd.",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: const Color.fromARGB(255, 25, 110, 27),
                            ), 
                        ),
                      ],
                    ),
                    const SizedBox(
                        height:6.0,
                    ),
                    Row (children: [
                      const Icon(Icons.place, color: Colors.red,),
                      Text(
                          "Srijanachowk, Pokahara-8, Nepal",
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                color: const Color.fromARGB(255, 25, 110, 27),
                            ),
                      )
                    ],
                    ),
                     const SizedBox(
                        height:6.0,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 21, 184, 31),
                    ),
                    Row(
                      children: [
                        Text(
                          "Opening & Closing Staus",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: const Color.fromARGB(255, 8, 81, 9),
                            ), 
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.lock_open,
                        color: Colors.green),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,

                          ),
                          child: Text(
                            "Open Now",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  color: const Color.fromARGB(255, 8, 81, 9),
                              ), 
                          ),
                        )
                      ],
                      
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                     const Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 21, 184, 31),
                    ),

                    Row(
                      children: [
                         Text(
                          "Ratings",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: const Color.fromARGB(255, 8, 81, 9),
                            ), 
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(Icons.star_sharp,color: Colors.yellow),
                        const Icon(Icons.star_sharp,color: Colors.yellow),
                        const Icon(Icons.star_sharp,color: Colors.yellow),
                        const Icon(Icons.star_sharp,color: Colors.yellow),
                        const Padding(padding:EdgeInsets.all(5.0),
                        ),
                      ],
                    ),
                      const SizedBox(
                      height: 6.0,
                    ),
                     const Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 21, 184, 31),
                    ),
                    Row(
                      children: [
                        Text(
                            "Description",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: const Color.fromARGB(255, 8, 81, 9),
                              ), 
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text('Websoft Futasl is renowned Futsal all over pokhara valley.'),
                      ],
                    ),
                    const SizedBox(
                        height:2.0,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 21, 184, 31),
                    ),   
                ],
              ),
            ),
            const SizedBox(
              height:3.0,
            ),
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: 6.0,
            ),
                    
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomRoundedButton(
                  radius: 6.0,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.ads_click_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Match Info",
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Get.toNamed("matchinfo");
                  },
                ),
              ),
            ),
               
              ],
            ),
      ),
          );
  }
}
