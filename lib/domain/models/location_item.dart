enum LocationItemType {
  city,
  airport,
  code
}

class LocationItem {
  final LocationItemType? type;
  final String? title;
  final String? subtitle;
  final String? code;
  final List<LocationItem> children;


  LocationItem({
     this.type,
     this.title ='',
     this.subtitle = '',
     this.code ='',
    this.children = const [],
  });
}
