import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  @override
  State<HomePages> createState() => _HomePageStates();
}

class _HomePageStates extends State<HomePages> {
  List giatien1 = ["Rs.690.00", "Rs.380.00", "Rs.260.00"];
  List giatien2 = ["Rs.490.00", "Rs.210.00", "Rs.1,120.00"];
  List texts = ["HouseHold", "Grocery", "Liquor", "Chilled"];
  List giohang1 = ["gung", "toi", "hanh"];
  List giohang2 = ["carot", "xoai", "nho"];
  List<IconData> icons = [
    Icons.house,
    Icons.local_grocery_store_sharp,
    Icons.liquor,
    Icons.cake,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("All Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Container(
                child: Row(
                  children: const [
                    Text("View all", style: TextStyle(color: Colors.green)),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 5, right: 2, bottom: 0),
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Icon(
                              icons[index],
                              size: 40,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(texts[index], style: TextStyle(fontSize: 10)),
                          SizedBox(width: 2),
                          Icon(Icons.arrow_forward_ios_outlined, size: 10),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nexus Member Deals",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Container(
                child: Row(
                  children: const [
                    Text("View all", style: TextStyle(color: Colors.green)),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 5, right: 2),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: giohang1.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 60, top: 3),
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text("1 KG"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/${giohang1[index]}.jpg",
                                    width: 80,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60, top: 3),
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Row(
                                children: [
                                  if (index == 0)
                                    Positioned(
                                        child: Icon(
                                      Icons.favorite,
                                      color: Colors.green,
                                    )),
                                  if (index != 0)
                                    Positioned(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Text(giohang1[index],
                            style: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        width: 90,
                        child: Text(giatien1[index],
                            style: TextStyle(fontSize: 10)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Keells Deals",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Container(
                child: Row(
                  children: const [
                    Text("View all", style: TextStyle(color: Colors.green)),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 5, right: 2),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: giohang2.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 60, top: 3),
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text("1 KG"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "images/${giohang2[index]}.jpg",
                                    width: 80,
                                    height: 60,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60, top: 3),
                              width: 30,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Row(
                                children: [
                                  if (index == 1)
                                    Positioned(
                                        child: Icon(
                                      Icons.favorite,
                                      color: Colors.green,
                                    )),
                                  if (index != 1)
                                    Positioned(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 90,
                        child: Text(giohang2[index],
                            style: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        width: 90,
                        child: Text(giatien2[index],
                            style: TextStyle(fontSize: 10)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}