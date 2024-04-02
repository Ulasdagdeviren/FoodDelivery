import 'package:food_delivery/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  // 2. oluşturulan
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async {
    // yemek pişmesini boş yere bekleme sende çay yap
    return await apiClient.getData(
        "https://mvs.bslmeiyu.com/api/v1/products/popular"); // burası bizden bir uri istiyor bilgisayar kendisi biz değil bunu verdik https://www.dbestech.com/api/product/list
    // burası aynı zamanda bir liste döndürüyor sonu list çünkü
  }
}
