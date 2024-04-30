import 'package:flutter/material.dart';
import 'package:flutter_application_1/style/AppColor.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: Text(
          "Flutter App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("asset/svg/ic_location.svg"),
          ),
        ],
      ),
      body: ListView(
        children: Looping(),
      ),
    );
  }

  Widget UserItem() {
    return Row(
      children: [
        SizedBox(
          height: 5,
        ),
        Image.asset(
          "asset/img/profile1.jpeg",
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "Lious hazel",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  List<Widget> Looping() {
    List<Widget> users = [];
    for (var i = 0; i < 100; i++) {
      users.add(UserItem());
    }
    return users;
  }
}

// ISI USER TAMPILAN HOME


//  SizedBox(
//               height: 15,
//             ),
//             Image.asset(
//               "asset/img/landscape.webp",
//               height: 400,
//             ),
//             SizedBox(
//               height: 9,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "A nice sunny day...",
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),