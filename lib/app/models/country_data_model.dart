class CountryDataModel {
  String country;
  CountryInfo countryInfo;
  int cases;
  int deaths;
  int recovered;
  int active;
  int population;
  String continent;

  CountryDataModel(
      {this.country,
      this.countryInfo,
      this.cases,
      this.deaths,
      this.recovered,
      this.active,
      this.population,
      this.continent});

  CountryDataModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    countryInfo = json['countryInfo'] != null
        ? new CountryInfo.fromJson(json['countryInfo'])
        : null;
    cases = json['cases'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    active = json['active'];
    population = json['population'];
    continent = json['continent'];
  }
}

class CountryInfo {
  String flag;

  CountryInfo({this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    flag = json['flag'];
  }
}
