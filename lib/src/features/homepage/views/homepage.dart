import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss, Trans;
import 'package:jobpilot/generated/locale_keys.g.dart';
import 'package:jobpilot/src/constants/assets/assets.dart';
import 'package:jobpilot/src/features/authentication/views/login_system_switcher.dart';
import 'package:jobpilot/src/features/browse_section/views/browse_screen.dart';
import 'package:jobpilot/src/features/account/views/account.dart';
import 'package:jobpilot/src/features/find_company/views/find_company.dart';
import 'package:jobpilot/src/features/find_jobs/views/find_jobs.dart';
import 'package:jobpilot/src/features/job_alert/views/job_alert.dart';
import 'package:jobpilot/src/features/menu/views/menu.dart';
import 'package:jobpilot/src/global/widgets/app/app_logo_app_bar.dart';
import 'package:jobpilot/src/services/theme/app_theme.dart';
import 'package:jobpilot/src/utilities/extensions/overlay_loader.dart';
import 'package:jobpilot/src/utilities/svg_icon.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/homepage_controller.dart';
import '../widgets/actions.dart';
import '../widgets/bottom_navigation.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool showJobPage = true;
  bool showWelcomePage = true;
  bool showStartPages =true;
void saveData() async {
  print("object");
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setBool('not_firstTime', false); // Save a boolean
}

void getData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
 
  bool? not_firstTime = prefs.getBool('not_firstTime');
  print(not_firstTime);
  try {
    setState(() {
      
  showStartPages =not_firstTime as bool;
    });
    
  } catch (e) {
    
  }

 
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomepageController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: context.color?.background,
          appBar: showStartPages
              ? null
              : AppLogoAppBar(
            actions: [
              HomepageActions(
                profilePic: controller.currentUser?.photoUrl ?? "",
                isAuthenticated: controller.isAuthenticated,
                showRegisterButton:
                    !controller.isAuthenticated && controller.isLoginScreen,
                onLoginClick: controller.onLoginClick,
                onRegisterClick: controller.onRegisterClick,
                onProfileClick: controller.onProfileClick.withOverlay,
                onNotificationClick: controller.onNotificationClick,
              ),
            ],
          ),
          bottomNavigationBar:(showStartPages || !controller.isAuthenticated)
              ? null
              : NavigationBarWidget(
            currentIndex: controller.currentIndex,
            navbarItems: [
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.homeIcon), LocaleKeys.home.tr())
                  : (const SvgIcon(Assets.loginIcon), LocaleKeys.login.tr()),
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.browseIcon), LocaleKeys.job.tr())
                  : (const SvgIcon(Assets.browseIcon), LocaleKeys.job.tr()),
              controller.isAuthenticated
                  ? (const SvgIcon(Assets.companyIcon), LocaleKeys.company.tr())
                  : (const SvgIcon(Assets.companyIcon), LocaleKeys.company.tr()),
                   controller.isAuthenticated
                  ? (const SvgIcon(Assets.accountIcon), LocaleKeys.account.tr())
                  : (const SvgIcon(Assets.loginIcon), LocaleKeys.login.tr()),
                   controller.isAuthenticated
                  ? (const SvgIcon(Assets.jobsIcon), LocaleKeys.job_alert.tr())
                  : (
                      const SvgIcon(Assets.companyIcon),
                      LocaleKeys.company.tr()
                    ),
             
             
              (const SvgIcon(Assets.menuIcon), LocaleKeys.menu_settings.tr()),
            ],
            onItemClick: controller.changePage,
          ),
          body: (showStartPages && showJobPage )?





               Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { setState(() {
                          showJobPage = false;
                        });},
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color(0xff012d46),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                             child:   Image.asset(
                            'assets/images/identity/app_logo.png', // Replace with your asset path
                            width: 80,
                            height: 80,
                          ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
               
                  Center(
                    
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,bottom: 40),
                      child: Image.asset(
                        'assets/images/welcome.png', // Replace with your asset path
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 200),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Dream Job',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffd6ad),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffffd6ad),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Here!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explore all the most exciting job roles based on your interest and study major.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    )
              : (showStartPages && showWelcomePage )?
              
              
              
              
               Column(
          children: [
             SizedBox(height: 50.0),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 120.0,
                width: 120.0,
                child: Image.asset('assets/images/identity/app_logo.png'),
              ),
            ),
             SizedBox(height: 20.0),
                Text(  
                  'Before You get Started tell us',  
                  style: TextStyle(fontSize: 12.0),  
              ),
                SizedBox(height: 20.0),
               Text(  
                  'What Are You Looking For ? ',  
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Color(0xff130160)),  
              ),

            InkWell(
               onTap: () {
                      saveData();
                    setState(() {

                      showWelcomePage=false;
                      showStartPages=false;
                    });
                  },
              child: Card(
                    shape:   RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Set the desired border radius
                  ),
              elevation: 4.0,
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Job Seekers',
                            style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Color(0xff130160)),
                          ),
                          SizedBox(height: 10.0), // Space between the texts
                          Text(
                            'I Want a Job for free',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20.0), // Space before the button
                            ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xff130160),
                            shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Set the desired border radius
                  ),
                            ),
                            onPressed: () {
                              // Button action
                            },
                            
                            child: Text('Get a job now',style: TextStyle(color: Colors.white),)
                             ,
                          ), 
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0), // Space between the column and image
                    SizedBox(
                      height: 140.0,
                      width: 100.0,
                      
                      child: Image.asset('assets/images/intro2.png'),
                    ),
                  ],
                ),
              ),
                 ),
            ),

                 InkWell(
                  onTap: () {
                      saveData();
                    setState(() {
                      showWelcomePage=false;
                      showStartPages=false;

                    });
                  },
                   child: Card(
                    
                    shape:   RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10), // Set the desired border radius
                       ),
                            
                               elevation: 4.0,
                               margin: EdgeInsets.all(16.0),
                               child: Padding(
                                 padding: EdgeInsets.all(16.0),
                                 child: Row(
                                   children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Job Seekers',
                            style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Color(0xFFffaf62)),
                          ),
                          SizedBox(height: 10.0), // Space between the texts
                          Text(
                            'I Want a Job for free',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20.0), // Space before the button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                            backgroundColor:Color(0xFFffaf62),
                            shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20), // Set the desired border radius
                       ),
                            ),
                            onPressed: () {
                              // Button action
                            },
                            
                            child: Text('Get a job now',style: TextStyle(color: Colors.white),)
                             ,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0), // Space between the column and image
                     SizedBox(
                      height: 140.0,
                      width: 100.0,
                      
                      child: Image.asset('assets/images/intro1.png'),
                    ),
                                   ],
                                 ),
                               ),
                                  ),
                 )
        
          ],
        )
: 
               
     controller.isAuthenticated?          
               
               
               
               
                PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChange,
                  children: [
                    controller.isAuthenticated
                        ? const BrowsePage()
                        : const LoginSystemSwitcher(),
                    controller.isAuthenticated
                        ? const FindJobsPage ()
                        : const FindCompanyPage(),
                     
                    controller.isAuthenticated
                        ? const FindCompanyPage ()
                        : const FindCompanyPage(),
                           controller.isAuthenticated
                        ? const AccountPage()
                        : const LoginSystemSwitcher(),
                        controller.isAuthenticated
                        ? const JobAlertPageWidget()
                        : const FindCompanyPage(),
                    
                    
                    const MenuScreen(),
                  ],
                ): LoginSystemSwitcher(),
        );
      },
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("Pricing Page."),
      ),
    );
  }
}
