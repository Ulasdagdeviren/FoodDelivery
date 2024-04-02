import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(
      viewportFraction: 0.85); // bu resmi ve beyaz containerı küçültür

  // Curr Page Value SAYFA DEĞERİ DEMEK
  var _currPageValue =
      0.0; // bu değer artmaya başlıyor sayfa yana hareket edince 0 ile başlıyor diğerinde 1 oluyor
  double _scaleFactor =
      0.8; // orjinal boyutunun yüzde 80 ni olsun istiyoruz scale factor=ölçek boyutu demej
  double _height =
      Dimensions.pageViewContainer; // 220 idi değiştirdik ortalama değeri aldık
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      // pageController.addListener() fonksiyonu, Flutter'da bir PageView widgetinde mevcut sayfayı takip etmek için kullanılır.
      setState(() {
        _currPageValue =
            pageController.page!; // yeni bir değer alır almaz kullıcaz
        //print("Current value is" + _currPageValue.toString()); // burdan artışı görebiliriz
      });
    });
  }

  @override
  void dispose() {
    // sayfadan ayrıldığımızda sayfa hala aktif olmasın
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.pageView, //320 idi container
          // Üst üste binen containerlar oluşturacağız
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        // Noktalı kısım
        DotsIndicator(
          dotsCount: 5, // page lenght sayfa sayısı kaç tane
          position: _currPageValue, // currentIndexPage
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        // Popular Text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment
                .end, // en diyince Food kısmını Popuların tabanıyla aynı hizaya alıyor
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing"),
              )
            ],
          ),
        ),

        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.listViewImgSize, // 120 idi
                      height: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors
                              .white38, // resim yüklenmezse bu rengi gösterecek
                          image: DecorationImage(
                              image: AssetImage("assets/image/food0.png"),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      // width olarak tam nerede durucak bilmiyoruz o yüzden expanded içine aldık ve genişlettik son kısma kadar
                      child: Container(
                        height: Dimensions.listViewTextContSize, // 100 idi
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimensions.radius20),
                                bottomRight:
                                    Radius.circular(Dimensions.radius20)),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // tüm hepsini ortalar önceden üstteydi
                              children: [
                                BigText(text: "Nutritious fruit meal in Chine"),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SmallText(
                                    text: "With chinese characteristicts"),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: AppColors.iconColor1),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        iconColor: AppColors.mainColor),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32min",
                                        iconColor: AppColors.iconColor2)
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    // burada geçişlerde containerlar arası geri plana düşmesini sağladık
    Matrix4 matrix = new Matrix4.identity(); // 3 kordinatı vardır x,y,z
    if (index == _currPageValue.floor()) // floor tam sayıya yuvarlıyor
    {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans =
          _height * (1 - currScale) / 2; //geçişte sol taraf problem yaratıyordu
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(
            0, currScale, 0); // x,y,z deeri alan köşegen 3 değer
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height *
          (1 - currScale) /
          2; //aşşağıya insin diue burdan çıkan sonuç şu 1/10*220=22 bunu bir matrise atarsak 20 piksele iner
      matrix = Matrix4.diagonal3Values(1, currScale,
          1); // _curr..+index+1 değerinden 0 elde ediyoruz oyüzden burda 0.8 elde ediliyor
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);

      matrix = Matrix4.diagonal3Values(1, currScale,
          1); // _curr..+index+1 değerinden 0 elde ediyoruz oyüzden burda 0.8 elde ediliyor
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currScale, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions
                .pageViewContainer, // aynısını burası içinde yaptık 220
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10), // burada
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    Dimensions.radius30), // buraları da değiştirdik 30 idi
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    image: AssetImage("assets/image/food.png"),
                    fit: BoxFit
                        .cover)), //Container rengini biri farklı diğeri farklı oldu
          ),
          //alttaki container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer, // burası 120 idi
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                ],
                color: Colors.white,
              ),
              child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height15, left: 15, right: 15),
                  child: AppColumn(
                    text: "Chinese Side",
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
