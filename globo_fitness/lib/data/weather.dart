class Weather {
  String name = "";
  String description = "";
  double temperature = 0;
  double pereceived = 0;
  int preessure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temperature, this.pereceived,
      this.preessure, this.humidity);

  Weather.fromJson(Map<String, dynamic> weatherMap) {
    this.name = weatherMap["name"];
    this.temperature = (weatherMap["main"]["temp"]) - 273.15 ?? 0;
    this.pereceived = (weatherMap["main"]["feels_like"]) - 273.15 ?? 0;
    this.preessure = (weatherMap["main"]["pressure"]) ?? 0;
    this.humidity = (weatherMap["main"]["humidity"]) ?? 0;
    this.description = weatherMap["weather"][0]["main"] ?? "";
  }
}
