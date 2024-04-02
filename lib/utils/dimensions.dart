import 'package:get/get.dart';

class Dimensions {
  // Geti kullanmak için material app ı GetMaterialApp olarak değiştirmemiz lazım
  // Bu her telefon için aynı şeyleri yüksekliği veremeyiz o yüzden bu classı yazıyoruz
  static double screenHight =
      Get.context!.height; // get ile context oluşturmadan direk çektik
  static double screenWidth = Get.context!.width;

  static double pageView = screenHight / 2.64;
  static double pageViewContainer = screenHight /
      3.84; //3.84 ortalama değer olduğu için yazdık ekran boyutu neyse onun 3.84 ü kadar al
  static double pageViewTextContainer = screenHight / 7.03;

  // Dynamic height padding and margin
  static double height10 =
      screenHight / 84.4; // tarama faktörü 844/10 üstten 10 cm boşluk bıraktık
  static double height15 = screenHight / 56.27;
  static double height20 = screenHight / 42.2; // altındaki 20
  static double height30 = screenHight / 28.13;
  static double height45 = screenHight / 18.76;

  // dynamic width padding and margin
  static double width10 =
      screenHight / 84.4; // tarama faktörü 844/10 üstten 10 cm boşluk bıraktık
  static double width15 = screenHight / 56.27;
  static double width20 = screenHight / 42.2; // altındaki 20
  static double width30 = screenHight / 28.13;

  //Font Size
  static double font16 = screenHight / 52.75;
  static double font20 = screenHight / 42.2;
  static double font26 = screenHight / 32.46;

  // Radius
  static double radius20 = screenHight / 42.2;
  static double radius30 = screenHight / 28.13;
  static double radius15 = screenHight / 56.27;

  // İcon Size

  static double iconSize24 = screenHight / 35.17;
  static double iconSize16 = screenHight / 52.75;
  // List view Size
  static double listViewImgSize = screenWidth /
      3.25; // 390/120  kapsayıcı resim boyutu=120 390 ekran genişliği
  static double listViewTextContSize = screenWidth / 3.9;

  //Popular Food
  static double popularFoodImgSize =
      screenHight / 2.41; // bütün ekranı 350 ye bölüyoruz

  // bottom height
  static double bottomHeightBar = screenHight / 7.03;
}
