import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayput.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayput.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right:  AppLayput.getHeight(16)),
        child: Column(
          children: [
            //Show Blue part of Card
            Container(
              decoration:  BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayput.getHeight(21)),
                  topRight: Radius.circular(AppLayput.getHeight(21))
                  ),

              ),
              padding: EdgeInsets.all(AppLayput.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),

                      const ThickContainer(),

                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayput.getHeight(24),
                              child: LayoutBuilder(
                                      
                                  builder: (BuildContext context, BoxConstraints constraints) {
                        
                                      return Flex(
                                        direction:Axis.horizontal,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.white
                                            )
                                            )
                                        )
                                        )
                                      );
                                  },
                                  
                              ),    
                          ),
                          Center(
                            child: Transform.rotate(angle: 1.5,
                                                  child:const Icon(Icons.local_airport_rounded,color: Colors.white,)),
                          ),
                          ]
                        ),
                      ),
                      
                      

                      const ThickContainer(),
                      
                      Expanded(child: Container()),
                      
                      Text(
                        ticket['to']['code'],
                        style: Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            ticket['from']['name'],
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                          ),
                          Text(
                            ticket['flying_time'],
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                          width: 100,
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: Styles.headLineStyle4.copyWith(color: Colors.white),
                            ),
                          )
                        ],
                    )
                ],
              ),
            ),
            //Show Orange part of card
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                        color: Colors.white
                      )
                      ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      
                      builder: (BuildContext context, BoxConstraints constraints) { 
                        return    Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate((constraints.constrainWidth()/15).floor(), (i) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white
                            )),
                        )
                        ),
                        );
                       },
                     
                    ),
                  )
                  ),
                  
                  const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      color: Colors.white
                    )
                    ),
                  ),
                
                ],
              ),
            ),
            //Show Orange part of card
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
                  ),

              ),
              padding: const EdgeInsets.only(left: 16,top:10,right:16,bottom:16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            ticket['date'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            Gap(5),
                            Text(
                              "Date",
                              style: Styles.headLineStyle4.copyWith(color: Colors.white),
                            ),

                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            const Gap(5),
                            Text(
                              "Departure time",
                              style: Styles.headLineStyle4.copyWith(color: Colors.white),
                            ),

                        ],
                      ),




                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                            Gap(5),
                            Text(
                              "Number",
                              style: Styles.headLineStyle4.copyWith(color: Colors.white),
                            ),

                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}