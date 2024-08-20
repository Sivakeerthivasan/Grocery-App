import 'package:flutter/material.dart';
import 'package:grocery_shop/utils/colors.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        const SizedBox(
          height: 30,
        ),
        title(),
        const SizedBox(height: 21),
        Container(
          height: 55,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.green[80]),
          child: Row(
            children: [
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: PrimaryColor,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.black38)),
                ),
              )),
              Material(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.insert_emoticon,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Keerthivasan",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: PrimaryColor, fontSize: 34),
          ),
          Text(
            "Find your food :)",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
                fontSize: 20),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Material(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.location_on,
            color: PrimaryColor,
            size: 19,
          ),
          const Text(
            "TamilNadu",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const Spacer(),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/boy.png',
                height: 40,
                width: 40,
              ))
        ],
      ),
    );
  }
}
