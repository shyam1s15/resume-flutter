import 'package:cv/base_page.dart';
import 'package:cv/certificates_page.dart';
import 'package:cv/data.dart';
import 'package:cv/get_in_touch_page.dart';
import 'package:cv/home_page.dart';
import 'package:cv/navigation.dart';
import 'package:cv/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_page.dart';
import 'companies_page.dart';
import 'my_skill_page.dart';

const VERTICAL_PADDING_SIZE = 32.0;
const PAGE_PADDING_SIZE = 18.0;

const MAIN_COLOR = Color(0xff5A72EA);
const SUB_COLOR = Color(0xffFF5A59);

const MIN_TABLET_SIZE = 1080;

const VERTICAL_PAGE_PADDING = 54.0;
const HORIZONTAL_PAGE_PADDING = 48.0;

const PAGE_CONTENT_PADDING = const EdgeInsets.symmetric(
  vertical: VERTICAL_PAGE_PADDING,
  horizontal: HORIZONTAL_PAGE_PADDING,
);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Data.WEB_TITLE,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
        accentColor: SUB_COLOR,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _downloadCV() {
    launch(Data.CV_URL);
  }


  void _hireMe() {
    scrollToIndex(keys.length - 1);
  }

  Widget pagePadding([Key? key]) => SizedBox(
        key: key,
        height: PAGE_PADDING_SIZE,
      );

  Widget _homePage() {
    return IntrinsicHeight(
      child: Stack(
        children: <Widget>[
          Opacity(
            child: Navigation((_) {}),
            opacity: 0,
          ),
          Positioned.fill(
            child: HomePage(
              key: keys[0],
              downloadCV: _downloadCV,
              hireMe: _hireMe,
            ),
          )
        ],
      ),
    );
  }

  final keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  Widget _buildListDetail(bool forTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: VERTICAL_PADDING_SIZE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: VERTICAL_PADDING_SIZE),
          Visibility(visible: !forTablet, child: AppTabBar()),
          _homePage(),
          pagePadding(),
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100, maxHeight: 360),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              
              children: [
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10CXtMH6VKt0-onWklpBPKJbgbwZNpiUD/view?usp=sharing")},
                    child: Image.asset('image/certificates/IIT_Bombay_seriosly-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/11VkMgjiWlyHlnpw0tu7XdYjaJeuaWV09/view?usp=sharing")},
                    child: Image.asset('image/certificates/epitome_internship.jpeg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10bMtDK3K320OBiWWJUaJe1o_2-54YaHt/view?usp=sharing")},
                    child: Image.asset('image/certificates/NPTEL_python.jpeg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/1-zOR1qcV96SCiMt9mWLLr_JYooBNicWw/view?usp=sharing")},
                    child: Image.asset('image/certificates/c++IIT_Bombay-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10fIFqX_2mVDjRVNnjk8AJV8j5vx0b9NG/view?usp=sharing")},
                    child: Image.asset('image/certificates/flutter-development-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10SN0hudrulVr81beKHNemKsDxLGwmKoo/view?usp=sharing")},
                    child: Image.asset('image/certificates/NPTEL_IOT.jpeg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/16auu70DRpPVuAr_N2jdQ60RI2qFGB-cc/view?usp=sharing")},
                    child: Image.asset('image/certificates/swayam_cyber_security_certificate-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10JKESho3jtXaamAlPLht1ir0Hfzu5e2a/view?usp=sharing")},
                    child: Image.asset('image/certificates/c++Basic_hackerrank.jpeg'),
                  ),
                ),
                
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10S8L_NUFkopeQfZCdvqdh_T9CddpHCvR/view?usp=sharing")},
                    child: Image.asset('image/certificates/CCI_with_nessus-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10qabI238Bkd9kzeIhUnjTU5Wk1_ZKhe7/view?usp=sharing")},
                    child: Image.asset('image/certificates/Coursera 22YZF8A86UP2-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10bPWYjKeMSDt6pThjtywB4cVf5Ne6zVY/view?usp=sharing")},
                    child: Image.asset('image/certificates/Coursera Deep Learning-1.jpg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10bRap6WFou7pgzSddUtBbRgqmap0cvnO/view?usp=sharing")},
                    child: Image.asset('image/certificates/coursera_younsei_university-1.jpg'),
                  ),
                ),
                
                
                
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/108MvFVYJF80oMgc6JYAl88HGNXM2K41M/view?usp=sharing")},
                    child: Image.asset('image/certificates/problemSolvingHackerrank.jpeg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10FiLvKCVXSce_bOuwsAwBE-RSPkiM_4b/view?usp=sharing")},
                    child: Image.asset('image/certificates/python_hackerrank.jpeg'),
                  ),
                ),
                BasePage(
                  child: InkWell(
                    onTap: () => {launch("https://drive.google.com/file/d/10H-0_9HP7WPh96jE0D3rOufSKKgs0SCc/view?usp=sharing")},
                    child: Image.asset('image/certificates/sql_basic_hackkerrank.jpeg'),
                  ),
                ),
                
              ],
            ),
          ),
          pagePadding(),
          AboutPage(keys[1], _downloadCV, _hireMe),
          pagePadding(),
          MySkillPage(keys[2]),
          pagePadding(),
          // CertificatePage(keys[3]),
          pagePadding(),
          GetInTouchPage(keys[4]),
        ],
      ),
    );
  }

  void scrollToIndex(int index) {
    Scrollable.ensureVisible(
      keys[index].currentContext!,
      duration: Duration(milliseconds: 500),
    );
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      Navigator.of(context).pop();
    }
  }

  Widget _buildNavigation(bool forTablet) {
    return Padding(
      padding: EdgeInsets.only(top: forTablet ? VERTICAL_PADDING_SIZE : 0),
      child: Navigation((index) {
        scrollToIndex(index);
      }),
    );
  }

  Widget _buildTabletBody(double width) {
    return Scaffold(
      key: _scaffoldKey,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildNavigation(true),
          SizedBox(width: 24),
          LimitedBox(
            maxWidth: 720,
            child: _buildListDetail(true),
          )
        ],
      ),
    );
  }

  Widget _buildPhoneBody() {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: _buildListDetail(false),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: _buildNavigation(false),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrain) {
        return constrain.maxWidth >= MIN_TABLET_SIZE
            ? _buildTabletBody(constrain.maxWidth)
            : _buildPhoneBody();
      },
    );
  }
}
