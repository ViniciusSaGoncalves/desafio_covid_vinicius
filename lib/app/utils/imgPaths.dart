class ImgPath {
  static final Map<String, String> paths = {
    'africa': 'lib/app/assets/img/africa.png',
    'africaG': 'lib/app/assets/img/africa2x.png',
    'asia': 'lib/app/assets/img/asia.png',
    'asiaG': 'lib/app/assets/img/asia2x.png',
    'europe': 'lib/app/assets/img/europe.png',
    'europeG': 'lib/app/assets/img/europe2x.png',
    'logo': 'lib/app/assets/img/logo.png',
    'logoG': 'lib/app/assets/img/logo2x.png',
    'northAmerica': 'lib/app/assets/img/northAmerica.png',
    'northAmericaG': 'lib/app/assets/img/northAmerica2x.png',
    'oceania': 'lib/app/assets/img/oceania.png',
    'oceaniaG': 'lib/app/assets/img/oceania2x.png',
    'southAmerica': 'lib/app/assets/img/southAmerica.png',
    'southAmericaG': 'lib/app/assets/img/southAmerica2x.png'
  };

  static String getPathImg(String key) {
    return paths[key];
  }
}
