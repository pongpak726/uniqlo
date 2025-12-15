

class Cloth {
  String imgLabel;
  String imageUrl;
  String imageText;
  double imagePrice;

  Cloth(this.imageUrl,this.imgLabel,this.imageText,this.imagePrice);

  static List<Cloth> samples = [
  Cloth('assets/images/01.png', 'Bomber Jacket','Short length, stand collar design for sporty or casual everyday styling , Windproof technology. Water-repellent finish protects against light rain. Finish is not permanent. Waterproof fastener on the front keeps rain out.',1200.0),
  Cloth('assets/images/02.png', 'Fleece Full-zip Jacket','The collar stands up well to keep your neck warm. , Piping at the cuffs and hem keeps cold air out and warmth in. Warm, puffy fabric.',2500.0),
  Cloth('assets/images/03.png', 'Down Coats','Cotton blend fabric with a crisp, tailored look.The short length pairs well with voluminous bottoms.',1650.0)
];
}