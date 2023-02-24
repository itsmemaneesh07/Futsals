import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Colors.green,
                  ]),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.list),
                          ],
                        ),
                        const SizedBox(
                          width: 240,
                          height:5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.place,
                              color: Colors.red,
                            ),
                            Text(
                              'Pokhara',
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                          decoration: InputDecoration(
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                           prefixIcon: const Icon(Icons.search),
                           prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                          hintText: 'Search'),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: (
                                
                              ) {},
                              child: Text(
                                'Near you',
                                style:
                                    Theme.of(context).textTheme.titleMedium?.copyWith(
                                          color: Colors.black,
                                        ),
                                      
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          ' Saved places',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Colors.black,
                              ),
                        )),
                    const SizedBox(
                      width: 180,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 140,
                        ),
                        child: Icon(Icons.date_range),
                      )
                      ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                        'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amarshing Futsal',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('Amarsing',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                    IconButton(
                        onPressed: () {
                          Get.toNamed('booking');
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                        'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('X-Army Futsal      ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('duikulomun',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                    IconButton(
                        onPressed: () {
                          Get.toNamed('booking');
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                        'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Airport  Futsal      ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('Haweli Marga',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                    IconButton(
                       onPressed: () {
                          Get.toNamed('booking');
                        },
                         icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                       'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ranipawa Futsal  ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('Ranipauwa',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                        
                    IconButton(
                        onPressed: () {
                          Get.toNamed('booking');
                        },
                         icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                       'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ranipawa Futsal  ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('Ranipauwa',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                        
                    IconButton(
                       onPressed: () {
                          Get.toNamed('booking');
                        },
                         icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                  Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Image.asset(
                        'assets/images/Futsals.jpg',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Amarshing Futsal',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.black,
                                  )),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              Text('Amarsing',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                      ))
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.yellow,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(5.0),
                              ),
                            ],
                          ),
                          Text('NRS.1500/hr',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 8, 81, 9),
                                  ))
                        ]),
                    IconButton(
                        onPressed: () {
                          Get.toNamed('booking');
                        },
                        icon: const Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
