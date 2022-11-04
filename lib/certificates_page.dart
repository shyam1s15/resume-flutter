import 'package:cv/app.dart';
import 'package:cv/page_title.dart';
import 'package:cv/widget/animated_text.dart';
import 'package:cv/widget/react_button.dart';
import 'package:flutter/material.dart';

import 'base_page.dart';

final certificates = [
  Company(
    imagePath: "image/cer.png",
    name: "SAMSUNG",
    time: "1 year 2 months",
  ),
  Company(
    imagePath: "image/certificates/NPTEL_IOT.jpeg",
    name: "SAMSUNG",
    time: "1 year 2 months",
  ),
  Company(
    imagePath: "image/certificates/IIT_Bombay_seriosly.jpg",
    name: "VTI",
    time: "1 year",
  ),
  Company(
    imagePath: "image/certificates/flutter-development.jpg",
    name: "Tiki",
    time: "4 months",
  ),
  Company(
    imagePath: "image/certificates/c++Basic_hackerrank.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/c++IIT_Bombay.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/CCI_with_nessus.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/Coursera 22YZF8A86UP2.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/Coursera Deep Learning.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/coursera_younsei_university.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/epitome_internship.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/NPTEL_python.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/problemSolvingHackerrank.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/python_hackerrank.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/sql_basic_hackkerrank.jpeg",
    name: "Vingroup",
    time: "Current company",
  ),
  Company(
    imagePath: "image/certificates/swayam_cyber_security_certificate.jpg",
    name: "Vingroup",
    time: "Current company",
  ),
];

class CertificatePage extends StatefulWidget {
  CertificatePage(GlobalKey key) : super(key: key);

  @override
  _CertificatePageState createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  Widget _buildCompany(Company company) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 164,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 5 / 4,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            company.time,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      ReactButton(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.grey.withAlpha(24),
                          child: Image.asset(
                            company.imagePath,
                            fit: BoxFit.fitHeight,
                            height: 94,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            AnimatedText(
              text: company.name,
              onTap: () {},
            )
          ],
        ),
        SizedBox(width: 12)
      ],
    );
  }

  Widget _buildCompanies() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: HORIZONTAL_PAGE_PADDING),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: certificates.reversed.map((e) => _buildCompany(e)).toList(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return BasePage(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: VERTICAL_PAGE_PADDING,
              right: VERTICAL_PAGE_PADDING,
              top: VERTICAL_PAGE_PADDING,
            ),
            child: PageTitle("Certificates"),
          ),
          SizedBox(height: 64),
          _buildCompanies(),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class Company {
  String imagePath;
  String name;
  String time;

  Company({
    required this.imagePath,
    required this.name,
    required this.time,
  });
}
