class DataModel {
  const DataModel({
    required this.date,
    this.green = 0,
    this.pink = 0,
    this.blue = 0,
    this.met = 0,
    this.jogging = 0.0,
  });

  final String date;
  final int green;
  final int pink;
  final int blue;
  final int met;
  final double jogging;
}
