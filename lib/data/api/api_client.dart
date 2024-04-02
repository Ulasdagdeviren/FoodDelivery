import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  // 1.oluşuturlan
  late String token;
  final String
      appBaseUrl; //bunu başka bir yerden api istemcisini çağıran kişinin oradan ileceğiz
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl; // temel url uygulama temel url eşitliyoruz
    timeout = Duration(
        seconds: 30); // zaman aşımını başlatıyoruz ona bir süre vereceğiz

    _mainHeaders = {
      //burda suunucuya mesaj göndericez
      'Content-type':
          'application/json; charset=UTF-8', // bu bir alma isteği sunucudan veri alacağız
      'Authorization': 'Bearer $token'
    };
  }
  Future<Response> getData(
    String uri,
  ) async {
    try {
      // sunucudan bir şeyler arayacağız hata bulursa bize dönecek
      Response response = await get(
          uri); // burada bie get yönetimi veya get request oluşturmak istiyoruz o yüzden bekleme olur
      return response;
    } catch (e) {
      return Response(
          statusCode: 1,
          statusText: e.toString()); // hatalı olursa bura dönecek
    }
  }
}
