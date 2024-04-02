import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/exandable.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        // özel kaydırılma yapıyor
        slivers: [
          SliverAppBar(
            toolbarHeight:
                70, // bu iconların kesik gözükmemesi için onları aşşağıya kaydırıyor bu sayede sarı da kayıyor
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              // bu sayede yazı üstte kalır ve aşşağıya gider
              preferredSize:
                  Size.fromHeight(20), // sarının uzunluğunu artırıyor
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinese Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              // arka plan resmini yavaşça yok etmek istiyoruz

              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width30, right: Dimensions.width30),
                child: ExpandableTextWidget(
                    // Bizim oluşturduğumuz kısaltma classı
                    text:
                        "Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir.Fizik, doğanın temel yasalarını ve bu yasaların çeşitli olaylara nasıl uygulandığını inceleyen bilim dalıdır. Fizik, madde ve enerji arasındaki etkileşimleri, hareketi, kuvveti,Fizik, diğer bilim dallarıyla da yakından ilişkilidir. Örneğin, biyofizik, biyolojinin fiziksel temellerini, astrofizik, evrenin fiziksel özelliklerini ve nükleer fizik, atom çekirdeklerinin yapısını inceler.Fizik, temel araştırmalardan uygulamalı araştırmalara kadar birçok alanda kullanılmaktadır. Günümüzde, fiziksel prensipler ve teknolojiler, günlük hayatta kullanılan birçok cihaz ve sistemde etkilidir."),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize
              .min, // bunun sayesinde en alta düşüp en az alan kaplayan yere geçti
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20 * 2.5,
                  right: Dimensions.width20 * 2.5,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.remove),
                  BigText(
                    text: "\$12.88 " + " X " + " 0 ",
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26,
                  ),
                  AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.add),
                ],
              ),
            ),
            Container(
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: AppColors.mainColor),
                    child: BigText(
                      text: "\$10 | add to cart",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
