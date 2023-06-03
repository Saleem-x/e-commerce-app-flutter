class BrandModel {
  String brandname;
  String image;

  BrandModel({required this.brandname, required this.image});
}

List<BrandModel> brandlist = [addidas, nike, fila, vans, puma, converse, rebok];
BrandModel addidas = BrandModel(
    brandname: 'Addidas',
    image:
        'assets/images/IKEA and adidas team up to imagine the future of sport in the home.jpg');
BrandModel nike = BrandModel(
    brandname: 'Nike',
    image:
        'assets/images/Nike Logo Decal Sticker - NIKE-LOGO - Thriftysigns.png');
BrandModel fila =
    BrandModel(brandname: 'Fila', image: 'assets/images/FILA Logo.jpg');
BrandModel vans = BrandModel(
    brandname: 'Vans',
    image: 'assets/images/The trick every Vans shopper needs to know.png');
BrandModel puma =
    BrandModel(brandname: 'Puma', image: 'assets/images/PUMAs History.jpg');
BrandModel converse =
    BrandModel(brandname: 'Converse', image: 'assets/images/x.jpg');
BrandModel rebok = BrandModel(
    brandname: 'Rebok',
    image:
        'assets/images/Reebok Puffer Coat for Women-Warm Winter Jacket with Sherpa Lined Hood - M _ Toffee.jpg');
