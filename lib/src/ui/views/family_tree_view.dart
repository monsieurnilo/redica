import 'package:flutter/material.dart';
import 'package:redica/src/ui/config/app_routes_config.dart';
import 'package:redica/src/ui/config/navigation_config.dart';
import 'package:redica/src/ui/enums/app_routes_enum.dart';
import 'package:redica/src/ui/widgets/bottom_navigation_bar_widget.dart';
import 'package:redica/src/ui/widgets/dashboard_widget.dart';
import 'package:redica/src/ui/widgets/search_bar_widget.dart';

class FamilyTreeView extends StatefulWidget {
  const FamilyTreeView({super.key});

  @override
  FamilyTreeViewState createState() => FamilyTreeViewState();
}

class FamilyTreeViewState extends State<FamilyTreeView> {
  int _selectedIndex = AppRoutesEnum.familyTree.index;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    onItemTapped(context, index);
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
