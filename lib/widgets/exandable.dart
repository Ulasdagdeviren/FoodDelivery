import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

// I love flutter laravel and golang bu metin 30 dan fazla o yüzden ikiye bölücem biri first de diğeri second da
class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true; // gizli mid değil mi

  double textHeight = Dimensions.screenHight /
      5.63; // ekran 100 den biraz fazla metin uzunluğu yaklaşık 200 yüksekliğinden fazlaysa

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(
          0,
          textHeight
              .toInt()); // bu ilk bölüm metnin belirli bir kısmını keser 0-30
      secondHalf = widget.text.substring(
          textHeight.toInt() + 1,
          widget.text
              .length); // 0-60 gibi düşün belirli bir yerer kadar almış oluruz.
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(size: Dimensions.font16, text: firstHalf)
          : Column(
              children: [
                SmallText(
                    height: 1.8, // height üstle altın arasına boşluk bırakır
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
