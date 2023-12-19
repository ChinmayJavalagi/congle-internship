import 'package:congle_internship/utils/constants.dart';
import 'package:flutter/material.dart';
import '../models/categories.dart';
import '../models/human_profile.dart';
import '../models/club_profile.dart';
import '../components/bottom_nav.dart';
import '../components/cards/category_card.dart';
import '../components/cards/club_profile_card.dart';
import '../components/cards/human_profile_card.dart';
import '../components/cards/room_details_card.dart';
import '../components/floating_action_button.dart';
import '../components/cards/welcome_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  List<Map<String, dynamic>> categories = CategoryData.categories;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left:8.0, bottom:8.0),
              child: IconButton(
                iconSize: 40.0,
                icon: Icon(Icons.search, color: Colors.grey,), // Icon at the beginning
                onPressed: () {
                },
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right:8.0, bottom:8.0),
                child: IconButton(
                  iconSize: 40.0,
                  icon: Icon(Icons.notifications_active, color: Colors.grey,), // Icon at the end
                  onPressed: () {
                  },
                ),
              ),
            ],
            flexibleSpace: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 120,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints.expand(height: 50),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: kPrimaryThemeColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Live Now',),
                      Tab(text: "Upcoming",),
                    ],
                  ),
                ),
                Expanded(child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            WelcomeCard(),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,bottom: 4.0, top: 4.0),
                              child: Text("TRENDING ROOMS", style: kHeadersTextStyle,),
                            ),
                            RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0, left: 8.0),
                              child: Text("CATEGORIES", style: kHeadersTextStyle),
                            ),
                            Container(
                              height: 200, // Adjust the height as needed
                              child: ListView.builder(
                                itemCount: 6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: CategoryCard(
                                      category: categories[index]['name'],
                                      activeRooms: categories[index]['activeRooms'], iconAsset: categories[index]['image'],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top:4.0),
                              child: Text("HUMANS TO FOLLOW", style: kHeadersTextStyle),
                            ),
                            Container(
                              height: 220, // Adjust the height as needed
                              child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: HumanProfileCard(
                                      name: HumanProfile.names[index],
                                      followers: HumanProfile.followers[index], profileImage: HumanProfile.getRandomProfileImages()[index],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 4.0, bottom:4.0),
                              child: Text("LIVE NOW", style: kHeadersTextStyle),
                            ),
                            RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),
                            RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),
                            RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),
                            RoomDetailsCard(heading: 'Medical Student Only Connect Now', clubType: 'DOCTORS CLUB', about: 'Discussion on how Medical Students do after MBBS',),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("SUGGESSTIONS", style: kHeadersTextStyle),
                            ),
                            Container(
                              height: 220, // Adjust the height as needed
                              child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top:2.0, left: 8.0),
                                    child: ClubProfileCard(
                                      clubName: ClubProfile.clubNames[index],
                                      tagline: ClubProfile.clubTaglines[index],
                                      profileImage: ClubProfile.getRandomClubImages()[index],
                                    ),
                                  );
                                },
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Text("Nothing to show! come back tomorrow."),
                  ],
                ))
              ],
            ),
          ),
          bottomNavigationBar: BottomNav(),
          floatingActionButton: FAB(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ),

      );
  }
}

