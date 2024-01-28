import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import 'friends_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<MyAppState>(
        context); // Receive the toggleAuth function from main
    final Function toggleAuth =
        appState.toggleAuth; // Assign the toggleAuth function to a variable

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const MapPage();
        break;
      case 1:
        page = const AddNewMediaPage();
        break;
      case 2:
        page = const AlbumPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor:
            selectedIndex == 1 ? Colors.black : const Color(0xFFF3E2CD),
        body: Column(
          children: [
            Container(
              color: const Color(0xFFF3E2CD),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle friends icon pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FriendsPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.people, size: 48),
                    ),
                    IconButton(
                      onPressed: () {
                        // Logout for now
                        toggleAuth();
                      },
                      icon: const Icon(Icons.settings, size: 48),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: page),
            SafeArea(
              child: NavigationBar(
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.pin_drop, size: 36),
                    label: 'Map',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.add_a_photo, size: 36),
                    label: 'Add New Media',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.cloud, size: 36),
                    label: 'Album',
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) => setState(() {
                  selectedIndex = value;
                }),
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                indicatorColor: const Color(0xFFC76C7C),
                indicatorShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                backgroundColor: const Color(0xFFC76C7C),
              ),
            )
          ],
        ),
      );
    });
  }
}

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E2CD),
      body: Image.asset(
        'lib/images/albumpage.png',
        width: 411.4,
        height: 634.3,
      ),
    );
  }
}

class AddNewMediaPage extends StatelessWidget {
  const AddNewMediaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(
          'lib/images/addpage.png',
          width: 411.4,
          height: 634.3,
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E2CD),
      body: Image.asset(
        'lib/images/mappage.png',
        width: 411.4,
        height: 634.3,
      ),
    );
  }
}
