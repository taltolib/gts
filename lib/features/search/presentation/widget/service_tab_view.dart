import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/widget/flights_tab.dart';

class ServiceTabView extends StatelessWidget {
  final TabController tabController;

  const ServiceTabView({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          FlightsTab(),
          Container(color: Colors.yellow),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
          Container(color: Colors.orange),
          Container(color: Colors.pink),
          Container(color: Colors.grey),
        ],
      ),
    );
  }
}

class EsimTab {
  const EsimTab();
}

class ExcursionTab {
  const ExcursionTab();
}

class InsuranceTab {
  const InsuranceTab();
}

class ToursTab {
  const ToursTab();
}

class TransferTab {
  const TransferTab();
}

class TrainTab {
  const TrainTab();
}

class HotelsTab {
  const HotelsTab();
}

