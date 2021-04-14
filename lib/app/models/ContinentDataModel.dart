class ContinentDataModel {
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int tests;
  int population;
  String continent;
  List<String> countries;

  ContinentDataModel(
      {this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.tests,
      this.population,
      this.continent,
      this.countries});

  ContinentDataModel.fromJson(Map<String, dynamic> json) {
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    active = json['active'];
    critical = json['critical'];
    tests = json['tests'];
    population = json['population'];
    continent = json['continent'];
    countries = json['countries'].cast<String>();
  }
}
