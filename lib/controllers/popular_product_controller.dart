import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  //3. oluşturduğumuz
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList =
      []; // bunu yapma sebebimiz rapoarı arayacağız ve verileri döndüreceğiz
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      // istek başarılı ise 200 kodu döner doğru yanıtı gelirse verileri listeye ekleyeceğiz
      _popularProductList =
          []; //bir kez daha null dönemsini istiyoruz çünkü bu yöntemi birçok kez çağırabiliriz null başlatmazsak önceki veriler tekrarlanabilir
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update(); // verileri güncelle
    } else {}
  }
}
