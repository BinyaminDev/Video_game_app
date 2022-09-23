import 'package:flutter/material.dart';

Widget searchButton({void Function()? buttonAction}) {
  return IconButton(
      onPressed: buttonAction,
      icon: const Icon(
        Icons.search_outlined,
        color: Color(0xff7560E3),
      ));
}

Widget notificationButton({void Function()? buttonAction}) {
  return IconButton(
      onPressed: buttonAction,
      icon: const Icon(
        Icons.notifications_on_sharp,
        color: Color(0xff7560E3),
      ));
}

Widget divider() {
  return const Divider(
    color: Color(0xff7560E3),
    thickness: 0.6,
  );
}
