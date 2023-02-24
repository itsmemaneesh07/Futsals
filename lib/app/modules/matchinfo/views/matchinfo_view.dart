
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:futsals/app/widgets/buttons/custom_rounded_button.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/matchinfo_controller.dart';

class MatchinfoView extends GetView<MatchinfoController> {
  const MatchinfoView({Key? key}) : super(key: key);
  
  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:  Text('Match Info'.toUpperCase(),
        ),
        centerTitle: true,
        backgroundColor:Colors.green ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 12.0,
              ),
                   Row(
                          children: [
                            Text(
                              "Select your preferred date & time for the match",
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Color.fromARGB(255, 19, 72, 19),
                                ), 
                            ),
                          ],
                        ),
                          const SizedBox(
                          height:10.0,
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TableCalendar(
                        firstDay: DateTime.utc(2015, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                        startingDayOfWeek: StartingDayOfWeek.sunday,
                        // ignore: prefer_const_constructors
                        calendarStyle: CalendarStyle(
                      // Use `CalendarStyle` to customize the UI
                      outsideDaysVisible: false,
                       ),
                   
                     
                        ), 
                        ),
                        
                        const Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 21, 184, 31),
                      ),  
                      const SizedBox(
                        height:20.0,
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                "Futsal",
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: const Color.fromARGB(255, 25, 110, 27), 
                                  ), 
                              ),   
                              ],
                            ),
                            
                            const SizedBox(
                                height: 10.0,
                              ),     
                           Column(
                             children: [
                               Row(
                                  children: [
                                   Text(
                                    "Game modes",
                                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                          color: const Color.fromARGB(255, 25, 110, 27),
                                      ),                                
                                  ),
                                  // ignore: prefer_const_constructors
                                Expanded(
                                   // ignore: prefer_const_constructors
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 248.0,
                                        
                                      ),
                                      child: const Icon(Icons.sports_soccer,
                                      color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  ],
                                ),
                                const SizedBox(
                                  height:20.0,
                                ),
                 
                 CustomRoundedButton(
                  width: 120,
                    color: Colors.green,                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "5  Vs  5",
                                    style:
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                  ), 
                                ),
                          ],   
                        ), 
                      ],
                    ),
                  ),
                   const SizedBox(
                                  height:10.0,
                    ),
                  CustomRoundedButton(
                    width: 120,
                    color: Color.fromARGB(255, 84, 182, 87),                
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Column(
                          children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Ground 1",
                                    style:
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                  ), 
                                ),
                          ],   
                        ),
                      ],
                    ),
                  ),
                             ],
                           ),
                  const SizedBox(
                              height:20.0,
                    ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.circle,
                      color: Color.fromARGB(255, 135, 229, 138),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Available'),
                      ),
                      
                      const Icon(Icons.circle,color: Color.fromARGB(255, 117, 210, 120),
                      ),
                       const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Selected'),
                      ),
                      const Icon(Icons.circle,color: Color.fromARGB(255, 119, 123, 119),
                      ),
                       const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Booked'),
                      ),
                      
                    ],
                  ),
                  const SizedBox(
                      height:10.0,
                    ),
                    SingleChildScrollView(
                      child: CustomRoundedButton(
                      color: Colors.green,                
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Text(
                                        "6:00 AM - 7:00AM" ,
                                        style:
                                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                      ), 
                                      
                                    ),
                                    const SizedBox(
                                      width: 125.0,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                       "Rs.1000" ,
                                        style:
                                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                      ), 
                                      ],
                                    )
                                  ],
                                ),
                              ],   
                            ),
                          ],
                        ),
                      ),
                          onTap: () {
                    kHoverTapTimeout;
                    const Color.fromARGB(224, 127, 141, 128);
                  },
                   ),
                    ),
                  const SizedBox(
                      height:12.0,
                  ),
                    CustomRoundedButton(
                    color: Colors.green,                
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text(
                                      "7:00 AM - 8:00AM" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    
                                  ),
                                  const SizedBox(
                                    width: 125.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                     "Rs.1000" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    ],
                                  )
                                ],
                              ),
                            ],   
                          ),
                        ],
                      ),
                    ),
                        onTap: () {
                    kHoverTapTimeout;
                    const Color.fromARGB(224, 127, 141, 128);
                  },
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                    CustomRoundedButton(
                    color: Colors.green,                
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text(
                                      "8:00 AM - 9:00AM" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    
                                  ),
                                  const SizedBox(
                                    width: 125.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                     "Rs.1000" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    ],
                                  ),
                                ],
                              ),
                            ],   
                          ),
                        ],
                      ),
                      
                    ),
                        onTap: () {
                    kHoverTapTimeout;
                    const Color.fromARGB(224, 127, 141, 128);
                  },
                  ), 
                  const SizedBox(
                    height: 12.0,
                  ),
                  
                    CustomRoundedButton(
                    color: Colors.green,                
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text(
                                      "9:00 AM - 10:00AM" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    
                                  ),
                                  const SizedBox(
                                    width: 115.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                     "Rs.1000" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    ],
                                  )
                                ],
                              ),
                            ],   
                          ),
                        ],
                      ),
                    ),
                        onTap: () {
                    kHoverTapTimeout;
                    const Color.fromARGB(224, 127, 141, 128);
                  },
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                   CustomRoundedButton(
                    color: Colors.green,                
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text(
                                      "10:00 AM - 11:00AM",
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    
                                  ),
                                  const SizedBox(
                                    width: 110.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                     "Rs.1000" ,
                                      style:
                                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                    ), 
                                    ],
                                  )
                                ],
                              ),
                            ],   
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                    kHoverTapTimeout;
                    const Color.fromARGB(224, 127, 141, 128);
                  },
                  ),
                       
                    const Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 109, 233, 114),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                "Rs.0",
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: const Color.fromARGB(255, 25, 110, 27), 
                                  ), 
                              ),  
                              
                              CustomRoundedButton(
                                radius: 8.0,
                                
                                // ignore: sort_child_properties_last
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 28.0,
                                    vertical: 12.0,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "book".toUpperCase(),
                                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  ),
                                  onTap: () {
                                    Get.toNamed("payment");
                                    
                                  },  
                                  color: Colors.green)
                            ]
                          ),
                  ],
                        ),
                      ),
            ],
          ),
        ),
      )
    );
  }
}
