class ImgPath {
  static final Map<String, String> paths = {
    'Africa': 'lib/app/assets/img/africa.png',
    'AfricaG': 'lib/app/assets/img/africa2x.png',
    'Asia': 'lib/app/assets/img/asia.png',
    'AsiaG': 'lib/app/assets/img/asia2x.png',
    'Europe': 'lib/app/assets/img/europe.png',
    'EuropeG': 'lib/app/assets/img/europe2x.png',
    'logo': 'lib/app/assets/img/logo.png',
    'logoG': 'lib/app/assets/img/logo2x.png',
    'North America': 'lib/app/assets/img/northAmerica.png',
    'North AmericaG': 'lib/app/assets/img/northAmerica2x.png',
    'Australia/Oceania': 'lib/app/assets/img/oceania.png',
    'Australia/OceaniaG': 'lib/app/assets/img/oceania2x.png',
    'South America': 'lib/app/assets/img/southAmerica.png',
    'South AmericaG': 'lib/app/assets/img/southAmerica2x.png'
  };

  static String getPathImg(String key) {
    return paths[key];
  }
}
