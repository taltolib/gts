enum FlightClass {
  economy('E', 'Эконом класс'),
  business('B', 'Бизнес класс'),
  first('F', 'Первый класс');

  final String code;
  final String title;

  const FlightClass(this.code, this.title);
}
