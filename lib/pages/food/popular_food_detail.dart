import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors
          .white, // buynu yapmazsak bottomNavigationBar ın kenarları radius olmaz
      body: Stack(children: [
        // Backgraound image
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions
                  .popularFoodImgSize, // burası 350 olduğu için 350 ye böldük
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.png"))),
            )),
        // İcon Widgets

        Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            )),

        // İntroduction of food
        Positioned(
            left: 0,
            right: 0, // çünkü birleşik kenarlarla
            bottom:
                0, // bu değeri vermezsek container pozisyonu sadece bir ksıım kaplar bu sayede en aşşağıya kadar kapladı
            top: Dimensions.popularFoodImgSize -
                20, // -20 yazmamızdaki amaç containerı yuları almak çünkü border radius bözükmez
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Chinese Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir."),
                    ),
                  )
                ],
              ),
            )),

        // Expandable text Widget
      ]),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
              child: BigText(
                text: "\$10 | add to cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
