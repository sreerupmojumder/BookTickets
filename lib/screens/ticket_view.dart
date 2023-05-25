import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
     return SizedBox(
        width: size.width*0.85,
       height: AppLayout.getHeight(GetPlatform.isAndroid==true?169:165),
       child: Container(
         margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Container(
               decoration:  BoxDecoration(
                 color:isColor==null?Color(0xFF526799):Colors.white,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
               ),
               padding: EdgeInsets.all(AppLayout.getHeight(16)),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Text(ticket['form']['code'],  style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black)),
                       Expanded(child: Container()),
                       ThickContainer(isColor: true,),
                       Expanded(
                         child: Stack(
                           children: [
                             SizedBox(
                               height: AppLayout.getHeight(24),
                               child: LayoutBuilder(
                                 builder: (BuildContext context, BoxConstraints constraints) {
                                   return Flex(
                                     direction: Axis.horizontal,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     mainAxisSize: MainAxisSize.max,
                                     children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>  SizedBox(
                                       width: AppLayout.getWidth(3),
                                       height: AppLayout.getHeight(1),
                                       child: DecoratedBox(
                                         decoration: BoxDecoration(
                                             color: isColor==null?Colors.white: Colors.grey.shade300
                                         ),
                                       ),
                                     )),

                                   );
                                 },
                               ),
                             ),
                             Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null?Colors.white: const Color(0xFF8ACCF7),),)),
                           ],

                         ),
                       ),

                       ThickContainer(isColor: true,),
                       Expanded(child: Container()),
                       Text(ticket['to']['code'], style:  isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black)),
                     ],
                   ),
                   Gap(1),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(
                         width: AppLayout.getWidth(100),
                         child: Text(ticket['form']['name'], style:  isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                       ),
                       Text(ticket['flying_time'], style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
                       SizedBox(
                         width: AppLayout.getWidth(100),
                         child: Text(ticket['to']['name'],textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4)
                       ),
                     ],
                   ),
                 ],
               ),
             ),

             Container(
               color:isColor==null?Styles.orangeColor: Colors.white,
               child: Row(
                 children:  [
                   SizedBox(
                     height: AppLayout.getHeight(20),
                     width: AppLayout.getWidth(10),
                     child: DecoratedBox(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topRight: Radius.circular(10),
                           bottomRight: Radius.circular(10),
                         )
                       ),
                     ),
                   ),
                   Expanded(child: Padding(
                     padding:  EdgeInsets.all(AppLayout.getHeight(12)),
                     child: AppLayoutBuilderWidget(section: 6,),
                   )
                   ),
                   SizedBox(
                     height: AppLayout.getHeight(20),
                     width: AppLayout.getWidth(10),
                     child: DecoratedBox(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(AppLayout.getHeight(10)),
                             bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                           )
                       ),
                     ),
                   ),
                 ],
               ),
             ),

             Container(
               decoration:  BoxDecoration(
                 color:isColor==null?Color(0xFFF37B67):Colors.white,
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?AppLayout.getHeight(21):0), bottomRight: Radius.circular(isColor==null?AppLayout.getHeight(21):0)),
               ),
               padding: EdgeInsets.only(left: AppLayout.getWidth(16), top: AppLayout.getHeight(10), right: AppLayout.getWidth(16), bottom: AppLayout.getHeight(16)),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(ticket['date'],
                           style:  isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black)
                           ),
                           Gap(AppLayout.getHeight(5)),
                           Text('Date',
                             style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text(ticket['departure_time'],
                             style:  isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black)),

                           Gap(AppLayout.getHeight(5)),
                           Text('Departure time',
                             style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Text(ticket['number'].toString(),
                             style:  isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black)
                           ),
                           Gap(AppLayout.getHeight(5)),

                           Text('Number',
                             style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                         ],
                       ),
                     ],
                   )
                 ],
               ),
             )
           ],
         ),
       ),
     );
  }
}
