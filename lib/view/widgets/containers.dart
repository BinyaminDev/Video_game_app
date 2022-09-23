
import 'package:flutter/material.dart';

Widget popularContainer({String? url, String? Gamename}) {
  return Padding(
    padding: const EdgeInsets.only(right: 22.0),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: url!.isNotEmpty
                        ? NetworkImage("https:$url")
                        : const NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQh4u1077PsTGtQpyUyxRDE0DeFv4XkjPotroq7_-ed9X9pKPSvsFlarxciUJC9LIQs4Y&usqp=CAU"),
                    fit: BoxFit.fitWidth),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12))),
            height: 159,
            width: 352,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75.0),
            child: SizedBox(
              child: Image.asset(
                "assets/images/left.png",
                fit: BoxFit.fitHeight,
              ),
              height: 23,
              width: 23,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330, top: 75),
            child: SizedBox(
              child: Image.asset(
                "assets/images/right.png",
                fit: BoxFit.fitHeight,
              ),
              height: 23,
              width: 23,
            ),
          )
        ]),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff2B2D47),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          width: 352,
          height: 57,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Gamename ?? "",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
                color: const Color(0xff7560E3),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget tagssmallList({required String categoryname}) {
  List smtags = [
    "PlayStation-2",
    "X-Box",
    "PlayStation-3",
    "NVIDEIA",
    "Nintendo",
    "PC",
    "Playstation-2",
    "X-Box",
    "Playstation -3",
    "NVIDEIA",
    "Nintendo",
    "PC"
  ];
  return Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: smtags.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xff2B2D47),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        categoryname = smtags[index],
                        style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
    ),
  );
}

Widget tagsLargeList({required String categoryname}) {
  List tag = [
    "Adventure",
    "Action",
    "Comic",
    "Soccer",
    "Classic",
    "Live",
    "Multiplayer"
  ];
  List imgtag = [
    "assets/images/power2.png",
    "assets/images/power.png",
    "assets/images/power2.png",
    "assets/images/power2.png",
    "assets/images/power.png",
    "assets/images/power2.png",
    "assets/images/power2.png"
  ];
  return Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: SizedBox(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: tag.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: const Color(0xff2B2D47),
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(color: const Color(0xff7560E3))),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(imgtag[index] ?? "null"),
                          Text(
                            categoryname = tag[index],
                            style: const TextStyle(
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          })),
    ),
  );
}

Widget textLabel({required String label}) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, top: 15),
    child: Text(label,
        style: const TextStyle(
            color: Color(0xff7560E3),
            fontWeight: FontWeight.w700,
            fontSize: 23)),
  );
}

Widget commonContainer({String? url, String? Gamename}) {
  return Padding(
    padding: const EdgeInsets.only(left: 25.0, top: 15,bottom: 5),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: url!.isNotEmpty
                      ? NetworkImage("https:$url")
                      : const NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQh4u1077PsTGtQpyUyxRDE0DeFv4XkjPotroq7_-ed9X9pKPSvsFlarxciUJC9LIQs4Y&usqp=CAU"),
                  fit: BoxFit.fitWidth),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          height: 139,
          width: 342,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff2B2D47),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          width: 342,
          height: 167,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Gamename ?? "",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    color: const Color(0xff7560E3),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 27,
                    width: 114,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xff1F2137)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xff7560E3),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "12-feb-2021",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 27,
                      width: 104,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: Color(0xff1F2137)),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset("assets/images/power2.png")),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Adventure",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xff1F2137)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/images/power.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Action",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
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
                    height: 27,
                    width: 114,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xff1F2137)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset("assets/images/discount.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "30 % offer",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: Color(0xff696C75),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (5).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (4).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (3).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (2).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (1).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (6).png"),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget commonContainerType2() {
  return Padding(
    padding: const EdgeInsets.only(left: 25.0, top: 15),
    child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/17_PR_SYBO.jpg",
                  ),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12))),
          height: 139,
          width: 342,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff2B2D47),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          width: 342,
          height: 147,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Far Cry 6",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    color: const Color(0xff7560E3),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 27,
                    width: 114,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xff1F2137)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xff7560E3),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "12-feb-2021",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 27,
                      width: 104,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: Color(0xff1F2137)),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Image.asset("assets/images/power2.png")),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Adventure",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xff1F2137)),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/images/power.png")),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Action",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Download",
                      style: TextStyle(
                          color: Color(0xff696C75),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (5).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (4).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (3).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (2).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (1).png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Image.asset("assets/images/Vector (6).png"),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}