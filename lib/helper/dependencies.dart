import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api istemcisi sınıfı oluşturduğumuzda burdan çağıracağız

  //Api Client
  Get.lazyPut(() => ApiClient(
      appBaseUrl:
          "https://www.dbestech.com")); //bağımlılıkları çağırırız bu bölümde api isrtemicis örneği oluşturduk doğrudan burada değil

  //Repository
  Get.lazyPut(() => PopularProductRepo(
      apiClient: Get
          .find())); //burada apiClient isimi ile oluşturudğumuz final apiClient ismi aynı olmalı

  //Controllers

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
