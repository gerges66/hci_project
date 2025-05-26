// home_screen.dart
import 'package:flutter/material.dart';
import 'package:hci_project/ui/home/tabs/add_tab/add_tab.dart';

import 'package:hci_project/ui/home/tabs/home_tab/home_tab.dart';
import 'package:hci_project/ui/home/tabs/love_tab/love_tab.dart';
import 'package:hci_project/ui/home/tabs/map_tab/map_tab.dart';
import 'package:hci_project/ui/home/tabs/profile_tab/profile_tab.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../event/event_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> listTabs = [HomeTab(), MapTab(), LoveTab(), ProfileTab()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,

          child: Icon(Icons.add,color: Colors.white,),onPressed: () {

          Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateEventPage()));
        },

        ),
        body: listTabs[selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(
            context,
          ).copyWith(canvasColor: AppColors.PrimaryColorForLight),
          child: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.amber,
            showUnselectedLabels: false,
            showSelectedLabels: true,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: buildNavBarItem(index: 0, imageName: AppAssets.homeTab),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: buildNavBarItem(index: 1, imageName: AppAssets.mapTab),
                label: 'Map',
              ),

              BottomNavigationBarItem(
                icon: buildNavBarItem(index: 2, imageName: AppAssets.loveTab),
                label: 'Love',
              ),
              BottomNavigationBarItem(
                icon: buildNavBarItem(
                  index: 3,
                  imageName: AppAssets.profileTab,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem({required int index, required String imageName}) {
    return selectedIndex == index
        ? Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(66),
            color: const Color(0x99202020),
          ),
          child: ImageIcon(AssetImage(imageName)),
        )
        : ImageIcon(AssetImage(imageName));
  }
}