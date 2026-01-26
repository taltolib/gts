import 'package:flutter/material.dart';
import 'package:gts/features/search/presentation/pages/tabs/flights/widget/flights_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/hotels/widget/hotel_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/insurance/widget/insurance_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/railway/widget/railway_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/tours/widget/tours_tab.dart';
import 'package:gts/features/search/presentation/pages/tabs/transfer/widget/transfer_tab.dart';


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
    RailwayTab(),
    TransferTab(),
    ToursTab(),
    InsuranceTab(),
    FlightsTab(),
    HotelTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return items[widget.tabController.index];
  }
}



