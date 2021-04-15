class CountryDataModel {
  String country;
  String flag;
  int cases;
  int deaths;
  int recovered;
  int active;
  int population;
  String continent;

  CountryDataModel(
      {this.country,
      this.flag,
      this.cases,
      this.deaths,
      this.recovered,
      this.active,
      this.population,
      this.continent});

  CountryDataModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    flag = json['countryInfo']['flag'];
    cases = json['cases'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
    population = json['population'];
    continent = json['continent'];
  }
}
