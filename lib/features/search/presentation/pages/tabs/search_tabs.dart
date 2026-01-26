import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/widget/service_tab_bar.dart';
import 'package:gts/features/search/presentation/widget/service_tab_view.dart';

class SearchTabs extends StatefulWidget {
  const SearchTabs({super.key});

  @override
  State<SearchTabs> createState() => _SearchTabsState();
}

class _SearchTabsState extends State<SearchTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ServiceTabBar(tabController: _tabController),
          ServiceTabView(tabController: _tabController),
        ],
      ),
    );
  }
}
