import 'package:flutter/material.dart';
import 'package:redica/src/ui/config/navigation_config.dart';
import 'package:redica/src/ui/widgets/bottom_navigation_bar_widget.dart';
import 'package:redica/src/ui/widgets/dashboard_widget.dart';
import 'package:redica/src/ui/widgets/search_bar_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    onItemTapped(context, index); // Utilisez la fonction de navigation
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          SearchBarWidget(
            controller: searchController,
            onChanged: (value) {
              // Handle search logic here
            },
          ),
          const Expanded(
            child: DashboardWidget(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
