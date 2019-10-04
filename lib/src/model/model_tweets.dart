class Tweets {
  final String id;
  final String image;
  final String userName;
  final String date;
  final String tage;
  final String description;
  final String networImage;

  Tweets(
      {this.id,
      this.image,
      this.userName,
      this.date,
      this.tage,
      this.description,
      this.networImage});
}

List<Tweets> tweets = [
  Tweets(
    id: 'Adam Kif',
    image: 'images/adam.jpg',
    userName: '@adam_kif',
    date: '14m',
    tage: '@FlutterDev @FlutterDev @FlutterDev @FlutterDev',
    description:
        'ListTile implements the materialdesign pattern for list items so you only have to think about what goes in it. Just give ListTile some text and icons, and let it handle the rest!',
    networImage: 'images/Hangzhou.jpg',
  ),
  Tweets(
    id: 'FlutterDev',
    image: 'images/adam.jpg',
    userName: '@FlutterDev',
    date: '53m',
    tage: '@freeCodeCamp @freeCodeCamp @freeCodeCamp ',
    description:
        'Sometimes it\'s all about attitude. Instead of saying I can\'t, don\'t limit yourself.Instead, try using this other word that will change your career from ',
    networImage: 'images/Guangzhou.jpg',
  ),
  Tweets(
    id: 'Figma',
    image: 'images/adam.jpg',
    userName: '@figmadesign',
    date: '4h',
    tage: 'https://bit.ly/2oEbLSF',
    description:
        'Get an inside look at what 6 plugin developers are cooking up on this Friday\'s Plugin Show & Tell. Looking to develop your own plugin? Our presenters will be answering questions too! Register to watch ',
    networImage: 'images/photo-Pekin.jpg',
  ),
  Tweets(
    id: 'Vue.js',
    image: 'images/adam.jpg',
    userName: '@VuesJob',
    date: 'Oct 2',
    tage: '@#workwithvuejs #vuejobs #vuejs',
    description:
        '🦉 @cycloid_iois looking for @vuejsdevs! we want to simplify DevOps and Cloud adoption" 🇫🇷 Paris, France, Remote⏱ Full-time',
    networImage: 'images/Shanghai.jpg',
  ),
];
