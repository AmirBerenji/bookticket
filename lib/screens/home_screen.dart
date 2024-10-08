import 'package:bookticket/screens/hotel_screen.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Styles.bgColor,
     body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20) ,
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Good morning",
                      style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                     Text(
                      "Book Ticket",
                      style: Styles.headLineStyle,
                      ),
                   ], 
                  ), 
                   Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img_1.jpg"),
                        ) 
                    ),
                   ) 
                ],
              ),
              const Gap(25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0Xfff4f6fd)
                ),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0XFFBFC205),),
                    Text(
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Flights",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Text(
                      "View all",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        const Gap(15),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              TicketView(),
              TicketView(),
            ],
          ),
        ),

        const Gap(15),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotels",
                    style: Styles.headLineStyle2,
                  ),
                  InkWell(
                    onTap: (){
          
                    },
                    child: Text(
                      "View all",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              ),
        ),

        const Gap(15),

        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
              HotelScreen(),
            ],
          )
          ),    
        

      ],
     ), 
    );
  }
}