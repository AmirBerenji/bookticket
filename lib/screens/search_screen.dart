import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/double_text_widget.dart';
import 'package:bookticket/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayput.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayput.getWidth(20),
          vertical: AppLayput.getWidth(20)),
        children: [
          Gap(AppLayput.getHeight(40)),
          Text(
            "What are\n you lookin for?",
            style: Styles.headLineStyle.copyWith(fontSize: AppLayput.getWidth(35)),
          ),
          Gap(AppLayput.getHeight(20)),
          FittedBox(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(AppLayput.getHeight(50)),
                color: const Color(0xFFF4F6FD)
              ),
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayput.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.horizontal(left: Radius.circular(AppLayput.getHeight(50))),
                      color: Colors.white
                    ),
                    child:const Center(
                      child: Text(
                        "Airlin tickets"
                      ),
                    )
                  ),
            
                  Container(
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayput.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius:  BorderRadius.horizontal(right: Radius.circular(AppLayput.getHeight(50))), 
                      color: Colors.transparent
                    ),
                    child:const Center(
                      child: Text(
                        "Hotel"
                      ),
                    )
                  ),
                ],    
              ),
            
              
            ),
          ),
          Gap(AppLayput.getHeight(25)),
          const IconTextWidget(icon: Icons.flight_takeoff_rounded,text: "Departure"),
          Gap(AppLayput.getHeight(15)),
          const IconTextWidget(icon: Icons.flight_land_rounded,text: "Arrival"),
          Gap(AppLayput.getHeight(25)),
          Container(
                padding: EdgeInsets.symmetric(vertical: AppLayput.getWidth(18),horizontal:AppLayput.getWidth(18) ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayput.getWidth(15),
                  ),
                  color: Colors.blue
                ),
                child: Center(
                  child: Text(
                        "Find tickets",
                        style: Styles.textStyle.copyWith(color: Colors.white, ),
                      )
                  ),
                ),
          Gap(AppLayput.getHeight(40)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights",smallText: "View all",),
          Gap(AppLayput.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayput.getHeight(15),vertical: AppLayput.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayput.getHeight(20)),
                  boxShadow:[
                    BoxShadow(
                     color: Colors.grey.shade200,
                     blurRadius: 1,
                     spreadRadius: 1 
                    )
                  ] 
                    
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayput.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayput.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/hotel2.jpeg'))
                      ),
                    ),
                    Gap(AppLayput.getHeight(12)),      
                    Text(
                      "20% discount on the early booking of this flight, Don't miss out this chance",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),

              Column(
                children: [
                  Stack(
                    children: [
                    Container(
                      width: size.width *0.44,
                      height: AppLayput.getHeight(184),
                      decoration: BoxDecoration(
                        color: Color(0xFF3Ab8b8),
                        borderRadius: BorderRadius.circular(AppLayput.getHeight(18))
                      ),
                      padding: EdgeInsets.symmetric(vertical: AppLayput.getHeight(15),horizontal: AppLayput.getHeight(15) ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Discount\nfor survey",
                            style: Styles.headLineStyle2.copyWith(fontWeight:FontWeight.bold,color: Colors.white ),
                          ),
                          Gap( AppLayput.getHeight(10)),
                          Text(
                            "Take the survey about our services and get discount",
                            style: Styles.headLineStyle3.copyWith(fontWeight:FontWeight.w500,color: Colors.white ),
                          ),
                        ],
                      ),
                    ),
                    
                  Positioned(
                    right: -40,
                    top: -30,
                    child: Container(
                      padding: EdgeInsets.all(AppLayput.getHeight(30)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18,color: Color(0xff189999)),
                        color: Colors.transparent 
                      ),
                    ),
                  ),

                                
                ]
                ),
                Gap(AppLayput.getHeight(15)),
                Container(
                  width: size.width*0.44,
                  height: AppLayput.getHeight(210),
                  padding: EdgeInsets.symmetric(vertical: AppLayput.getHeight(15),horizontal:  AppLayput.getHeight(15)),
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(AppLayput.getHeight(18)),
                     color: Color(0xFFEC6545)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Text(
                        "Take ticket",
                        style: Styles.headLineStyle.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )



                ],
              )

            ],
          )    
        ],
      ),

    );
  }
}
