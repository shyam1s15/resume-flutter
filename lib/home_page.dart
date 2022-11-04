import 'package:cv/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'base_page.dart';

class HomePage extends StatelessWidget {
  final VoidCallback? 
  downloadCV;
  final VoidCallback? hireMe;

  HomePage({
    GlobalKey? key,
    this.downloadCV,
    this.hireMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constrain) {
        return BasePage(
          color: MAIN_COLOR,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: constrain.maxWidth / 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          "I'm ${Data.NAME}",
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 54,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  Data.HOME_SENTENCE,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "- ${Data.HOME_AUTHOR} -",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Wrap(
                  runSpacing: 12,
                  spacing: 12,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                      onPressed: downloadCV,
                      color: SUB_COLOR,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.file_download,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Download my CV",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    
                  MaterialButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                      onPressed: hireMe,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: SUB_COLOR,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Hire Me",
                            style: TextStyle(color: SUB_COLOR),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
