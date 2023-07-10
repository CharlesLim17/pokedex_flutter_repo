import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 12,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6FB1FC), Color(0xFF0052D4), Color(0xFF2B74C7)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Driver's Image
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/user_icon.jpg'),
                  ),

                  //
                  const SizedBox(height: 12),

                  // Name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe Driver',
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              color: const Color(0xFFF5F8FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(width: 8),
                      // const IconButton(
                      //   onPressed: null,
                      //   icon: Icon(
                      //     LineIcons.alternatePencil,
                      //     color: Colors.white,
                      //     size: 16,
                      //   ),
                      // ),
                      const Icon(
                        LineIcons.alternatePencil,
                        color: Color(0xFFF5F8FA),
                        size: 16,
                      ),
                    ],
                  ),

                  //
                  const SizedBox(height: 2),

                  // License Number
                  Text(
                    'License Number: 2023-19219-MN-0',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: const Color(0xFFF5F8FA),
                          fontSize: 10,
                        ),
                  ),

                  //
                  const SizedBox(height: 2),

                  // Plate Number
                  Text(
                    'Plate Number: 17NCR17',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: const Color(0xFFF5F8FA),
                          fontSize: 10,
                        ),
                  ),

                  //
                  const SizedBox(height: 8),
                ],
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: Divider(color: Colors.white.withOpacity(0.2)),
            ),

            // History
            ListTile(
              leading: const Icon(
                LineIcons.history,
                color: Color(0xFFF5F8FA),
                size: 22,
              ),
              title: Text(
                'History',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: const Color(0xFFF5F8FA),
                    ),
              ),
              onTap: () {
                Navigator.pop(context);
                context.pushNamed('BookingHistoryScreen');
              },
            ),

            // Rewards
            ListTile(
              leading: const Icon(
                LineIcons.cocktail,
                color: Color(0xFFF5F8FA),
                size: 22,
              ),
              title: Text(
                'Rewards',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: const Color(0xFFF5F8FA),
                    ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Settings
            ListTile(
              leading: const Icon(
                LineIcons.cog,
                color: Color(0xFFF5F8FA),
                size: 22,
              ),
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: const Color(0xFFF5F8FA),
                    ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            // Logout
            ListTile(
              leading: const Icon(
                LineIcons.alternateSignOut,
                color: Color(0xFFF5F8FA),
                size: 22,
              ),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: const Color(0xFFF5F8FA),
                    ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
