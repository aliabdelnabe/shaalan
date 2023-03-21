import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

List story = [
  {'name': 'Add Story', "images": "images/0.png"},
  {'name': 'Samer alaa', "images": "images/4.png"},
  {'name': 'Abo almesh', "images": "images/5.png"},
  {
    'name': 'Ahmed sayed',
    "images": "images/6.png",
  }
];
List post = [
  {
    'name': 'Grazielen',
    "time": "19 hour ago",
    "images": "images/5.png",
    "imagepost": "images/post.png"
  },
  {
    'name': 'Samer alaa',
    "time": "20 hour ago",
    "images": "images/4.png",
    "imagepost": "images/Rectangle 41912(1).png"
  },
  {
    'name': 'Blilie Eilish',
    "time": "01 day ago",
    "images": "images/6.png",
    "imagepost": "images/post2.png"
  },
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 428,
            height: 290,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42)),
              color: Color(0xff222222),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.grid_view_outlined,
                        color: Colors.white,
                      ),
                      Container(
                        width: 153,
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xff2f2f2f),
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.notification_important_outlined,
                              color: Color.fromARGB(255, 129, 127, 127),
                              size: 25,
                            ),
                            Container(
                              width: 73,
                              height: 49,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(28),
                              ),
                              child: const Icon(
                                Icons.mark_email_unread_outlined,
                                color: Colors.blueGrey,
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(),
                Container(
                  width: double.infinity,
                  height: 120,
                  child: Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: story.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              width: 100,
                              height: 84,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color.fromARGB(255, 255, 60, 0),
                                      Color.fromARGB(255, 255, 156, 98),
                                    ]),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.5),
                                child: Container(
                                  width: 100,
                                  height: 84,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff222222),
                                    borderRadius: BorderRadius.circular(38),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(4),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  ("${story[index]["images"]}"),
                                                ))),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${story[index]["name"]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily:
                                    "fonts/PlusJakartaSans-ExtraBoldItalic.woff2",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: post.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(39),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(children: [
                          Image.asset("${post[index]["imagepost"]}"),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 59,
                                      height: 59,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(38),
                                        gradient: const LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Color.fromARGB(255, 255, 60, 0),
                                              Color.fromARGB(255, 255, 156, 98),
                                            ]),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Container(
                                          width: 59,
                                          height: 59,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff222222),
                                            borderRadius:
                                                BorderRadius.circular(38),
                                          ),
                                          child: Image.asset(
                                            "${post[index]["images"]}",
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${post[index]["name"]}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${post[index]["time"]}",
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.white.withOpacity(0.2)),
                                      width: 57,
                                      height: 57,
                                      child: const Icon(
                                        Icons.bookmarks_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 160, right: 15),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.send_outlined,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Column(
                                    children: const [
                                      Icon(
                                        Icons.sms,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "273",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 65,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(28),
                                        border: Border.all(
                                          width: 0.5,
                                          color: Colors.white.withOpacity(0.5),
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.favorite_outline,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "4.7k",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      width: 408,
                      height: 67,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 221, 221),
                          borderRadius: BorderRadius.circular(19)),
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "images/2.png",
                                    scale: 1.5,
                                  ),
                                  const Text(
                                    "Add a comment ......",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "(340 Comments)",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

//Textsms
