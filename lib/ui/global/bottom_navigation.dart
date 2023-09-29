import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pokedex_flutter_repo/features/history/screen/history_screen.dart';
import 'package:pokedex_flutter_repo/features/home/screen/home_screen.dart';
import 'package:pokedex_flutter_repo/features/pokedex/screen/pokedex_screen.dart';
import 'package:pokedex_flutter_repo/features/profile/screen/profile_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const PokedexScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF1C1C1C),

      // Body
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFF1C1C1C),
        child: SingleChildScrollView(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
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
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: GNav(
                // sizings
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),

                // colors
                backgroundColor: const Color(0xFF1C1C1C),
                color: Colors.grey,
                activeColor: Colors.white70,
                tabBackgroundColor: const Color(0xFF262626),
                tabActiveBorder:
                    Border.all(color: Colors.grey.shade900, width: 1),

                // styles
                textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.white70,
                    ),

                // animations
                curve: Curves.linear,
                rippleColor: Colors.grey.shade900,
                hoverColor: const Color(0xFF262626),

                // tabs
                tabs: const [
                  GButton(
                    icon: FontAwesomeIcons.houseChimney,
                    text: 'Home',
                    iconSize: 18,
                    gap: 8,
                  ),
                  GButton(
                    icon: FontAwesomeIcons.circleDot,
                    text: 'Pokédex',
                    iconSize: 22,
                    gap: 6,
                  ),
                  GButton(
                    icon: FontAwesomeIcons.battleNet,
                    text: 'Battles',
                    iconSize: 22,
                    gap: 6,
                  ),
                  GButton(
                    icon: FontAwesomeIcons.userAstronaut,
                    text: 'Trainer Card',
                    iconSize: 20,
                    gap: 6,
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
