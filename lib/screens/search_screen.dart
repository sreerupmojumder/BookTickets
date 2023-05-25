import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(20), horizontal: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are\nyou looking for?', style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          TicketTabs(firstTab: 'Airlines tickets', secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12), horizontal: AppLayout.getHeight(12)),
              height: AppLayout.getHeight(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: Color(0xD91130CE),
                ),
              child: Center(
                  child: Text('find tickets', style: Styles.textStyle.copyWith(color: Colors.white))
              ),
          ),
          Gap(AppLayout.getHeight(30)),
          const AppDoubleTextWidget( bigText: 'Upcoming flights',smallText:'view all',),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.shade200,
                     blurRadius: 1,
                     spreadRadius: 1,
                   )
                 ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/six.jpg'
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                        "20% discount on the early booking of this flight, Don's miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3ABBBB),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        child: Column(
                          children: [
                            Text('Discount\nfor survey', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            Gap(AppLayout.getHeight(10)),
                            Text('Take the survey about our services and get discount', style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 18),)
                          ],
                        ),
                      ),
                     Positioned(
                       right: -45,
                       top: -40,
                       child:  Container(
                       padding: EdgeInsets.all(AppLayout.getHeight(30)),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.transparent,
                           border: Border.all(width: 18, color: Color(0xFF189999))
                       ),
                       child: Column(

                       ),
                     ),
                     )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    child: Column(
                      children: [
                        Text('Take Love', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(
                              children:
                                [
                                  TextSpan(
                                    text: '😍',
                                    style: TextStyle(fontSize: 38),
                                  ),
                                  TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 38),
                                  ),
                                  TextSpan(
                                    text: '😘',
                                    style: TextStyle(fontSize: 38),
                                  ),
                                ]
                            )
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
