import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pokedex_flutter_repo/features/home/screen/home_screen.dart';
import 'package:pokedex_flutter_repo/features/profile/screen/profile_screen.dart';
import 'package:pokedex_flutter_repo/ui/global/drawer_widget.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // static final List<String> _appBarTitles = [
  //   'Home',
  //   'Pokedex',
  //   'Profile',
  // ];

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Icon(LineIcons.book),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: colors.background,

      // // App Bar
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFFFF5555),
      //   titleSpacing: 0,

      //   // icon
      //   leading: IconButton(
      //     icon: Icon(Icons.menu, color: colors.background),
      //     onPressed: () {
      //       _scaffoldKey.currentState?.openDrawer();
      //     },
      //   ),

      //   // title
      //   title: Text(
      //     _appBarTitles[_selectedIndex],
      //     style: Theme.of(context).textTheme.headlineSmall!.copyWith(
      //           fontSize: 20,
      //           color: colors.background,
      //         ),
      //   ),
      // ),

      drawer: const DrawerWidget(),

      // Body
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        color: const Color(0xFF1C1C1C),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 1,
                color: Colors.grey.shade900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 11,
              ),
              child: GNav(
                // sizings
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                gap: 6,
                iconSize: 20,

                // colors
                backgroundColor: const Color(0xFF1C1C1C),
                color: Colors.grey,
                activeColor: Colors.white70,
                tabBackgroundColor: Colors.grey.withOpacity(0.18),
                tabActiveBorder:
                    Border.all(color: Colors.grey.shade900, width: 1),

                // styles
                textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.white70,
                    ),

                // animations
                curve: Curves.linear,
                rippleColor: Colors.grey.shade900,
                hoverColor: const Color(0xFF2B74C7).withOpacity(.25),

                // tabs
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.bookOpen,
                    text: 'Pokedex',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
