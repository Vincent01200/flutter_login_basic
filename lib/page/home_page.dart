import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/main_page.dart';
import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter_application_1/style/AppColor.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Menus currentIndex = Menus.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: Page[currentIndex.index],
      extendBody: true,
    );
  }

  final Page = [
    MainPage(),
    Center(child: Text("Favorite")),
    Center(child: Text("Add post")),
    Center(child: Text("Message")),
    ProfilePage(),
  ];
}

enum Menus { Home, Favorite, Add, Message, Profile }

class BottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const BottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.Home),
                      icon: SvgPicture.asset(
                        "asset/svg/ic_home.svg",
                        colorFilter: ColorFilter.mode(
                          currentIndex == Menus.Home
                              ? Colors.black
                              : Colors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.Favorite),
                      icon: SvgPicture.asset(
                        "asset/svg/ic_favorite.svg",
                        colorFilter: ColorFilter.mode(
                          currentIndex == Menus.Favorite
                              ? Colors.black
                              : Colors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.Message),
                      icon: SvgPicture.asset(
                        "asset/svg/ic_messages.svg",
                        colorFilter: ColorFilter.mode(
                          currentIndex == Menus.Message
                              ? Colors.black
                              : Colors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.Profile),
                      icon: SvgPicture.asset(
                        "asset/svg/ic_user.svg",
                        colorFilter: ColorFilter.mode(
                          currentIndex == Menus.Profile
                              ? Colors.black
                              : Colors.black.withOpacity(0.3),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.Add),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.primary,
                ),
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset("asset/svg/ic_add.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
