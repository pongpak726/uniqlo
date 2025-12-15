class Cloth {
  String imgLabel;
  String imageUrl;
  String imageText;

  Cloth(this.imageUrl,this.imgLabel,this.imageText);

  static List<Cloth> samples = [
  Cloth('assets/images/01.webp', 'Thai red curry','Create a Thai-style feast at home with our Cloths, from fragrant green curries to veggie noodles and classic pad Thai'),
  Cloth('assets/images/02.webp', 'Thai green curry','Create a Thai-style feast at home with our Cloths, from fragrant green curries to veggie noodles and classic pad Thai'),
  Cloth('assets/images/03.webp', 'larb num tok','Create a Thai-style feast at home with our Cloths, from fragrant green curries to veggie noodles and classic pad Thai')
];
}