import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isSelected = false;

  Color SelectedColorBg = const Color.fromRGBO(8, 121, 191, 1);
  Color SelectedColorFg = Colors.white;
  Color NotSelectedColorBg = const Color.fromRGBO(240, 239, 244, 1);
  Color NotSelectedColorFg = const Color.fromRGBO(135, 135, 135, 1);

  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goa Tour',
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Image.asset("assets/home-icon.png"),
          ),
          BottomNavigationBarItem(
            label: "search",
            icon: Image.asset("assets/search.png"),
          ),
          BottomNavigationBarItem(
            label: "bookmark",
            icon: Image.asset("assets/bookmark.png"),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Image.asset("assets/person.png"),
          ),
        ]),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    PhysicalModel(
                      elevation: 2,
                      shape: BoxShape.rectangle,
                      shadowColor: Colors.black,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 35, left: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/instagram.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        child: const Text(
                                          "Follow us on Instagram",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Stack(
                                        children: [
                                          Container(
                                            width: 26,
                                            height: 16,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(52),
                                              color: const Color(0xff0879bf),
                                            ),
                                          ),
                                          Container()
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Share your reels with us and attract Discount",
                                    style: TextStyle(
                                      fontSize: 7,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset("assets/rectangle.png"),
                                  Image.asset(
                                    "assets/profile.png",
                                    height: 38,
                                    width: 38,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 15),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            foregroundColor: SelectedColorFg,
                            backgroundColor: SelectedColorBg,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset("assets/hotel.png"),
                              const SizedBox(width: 5),
                              const Text("Hotel")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            foregroundColor: NotSelectedColorFg,
                            backgroundColor: NotSelectedColorBg,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset("assets/market.png"),
                              const SizedBox(width: 5),
                              const Text("Market")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            foregroundColor: NotSelectedColorFg,
                            backgroundColor: NotSelectedColorBg,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset("assets/cafe.png"),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text("Cafe")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            foregroundColor: NotSelectedColorFg,
                            backgroundColor: NotSelectedColorBg,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Container(child: const Text("Outing places")),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(240, 239, 244, 1),
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search your favorite places",
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(165, 165, 165, 1),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: Image.asset("assets/searchSquare.png"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 25),
                        child: Image.asset("assets/mic-on.png"),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/northside-icon.png",
                            width: MediaQuery.of(context).size.width / 3 - 30,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/southside-icon.png",
                          width: MediaQuery.of(context).size.width / 3 - 30,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/panjim-icon.png",
                          width: MediaQuery.of(context).size.width / 3 - 30,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 150,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                              Color.fromRGBO(44, 126, 167, 1),
                              BlendMode.screen),
                          child: Image.asset(
                            "assets/background-icecream.png",
                            width: 500,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          width: 130,
                          child: const Text(
                            "Claim your discount 30% daily now!",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: 100,
                          margin: const EdgeInsets.only(top: 90, left: 20),
                          height: 30,
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text(
                              "Order now",
                              style: TextStyle(fontSize: 14),
                            ),
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 180, top: 15),
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..scale(1.8)
                              ..rotateY(pi),
                            child: Image.asset(
                              "assets/icecream-cone.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 105, left: 275),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 20,
                          width: 75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                height: 5,
                                width: 13,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromRGBO(79, 175, 90, 1)),
                              ),
                              const SliderIndicator(),
                              const SliderIndicator(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 250, top: 10),
                  child: Text(
                    "Hot Locations 🔥",
                    style: GoogleFonts.patrickHand(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 200,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/live-events.png",
                                  width: 170,
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 20,
                                  ),
                                  child: const Text(
                                    "parties",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 40,
                                  ),
                                  child: const Text(
                                    "Live Events",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 120,
                                  ),
                                  child: const Text(
                                    "#Trending",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Container(
                                height: 30,
                                width: 100,
                                margin: EdgeInsets.only(top: 145, left: 10),
                                child: FilledButton(
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.blue),
                                  onPressed: () {},
                                  child: const Text(
                                    "Visit Place",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/best-choice1.jpg",
                                  width: 170,
                                  height: 200,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 20,
                                  ),
                                  child: const Text(
                                    "SUNRISE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 40,
                                  ),
                                  child: const Text(
                                    "Best Choice",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 120,
                                  ),
                                  child: const Text(
                                    "#morninghood",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Container(
                                height: 30,
                                width: 100,
                                margin: EdgeInsets.only(top: 145, left: 10),
                                child: FilledButton(
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.blue),
                                  onPressed: () {},
                                  child: const Text(
                                    "Visit Place",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/best-choice2.jpg",
                                  width: 180,
                                  height: 170,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 20,
                                  ),
                                  child: const Text(
                                    "EVENING",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 40,
                                  ),
                                  child: const Text(
                                    "Best Choice",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  )),
                              Container(
                                  width: 100,
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    top: 120,
                                  ),
                                  child: const Text(
                                    "#sunset",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                              Container(
                                height: 30,
                                width: 100,
                                margin: EdgeInsets.only(top: 145, left: 10),
                                child: FilledButton(
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.blue),
                                  onPressed: () {},
                                  child: const Text(
                                    "Visit Place",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 5,
      width: 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(232, 232, 232, 1),
      ),
    );
  }
}
