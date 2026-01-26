import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/widget/flights_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/hotels/hotel_tab.dart';


class ServiceTabView extends StatefulWidget {
  final TabController tabController;

  const ServiceTabView({
    super.key,
    required this.tabController,
  });

  @override
  State<ServiceTabView> createState() => _ServiceTabViewState();
}

class _ServiceTabViewState extends State<ServiceTabView> {

  List<Widget> items =[
    FlightsTab(),
    HotelTab(),
    FlightsTab(),
    HotelTab(),
    FlightsTab(),
    HotelTab(),
    FlightsTab(),
    HotelTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return items[widget.tabController.index];
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



