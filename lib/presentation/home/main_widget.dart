
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/generated/assets.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:hasanmemoodportfolio/src/string.dart';

import '../../components/angle_divider_widget.dart';
import '../../components/custom_widgets.dart';


class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.clrFlutter,
    required this.context,
  });

  final Color clrFlutter;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        return constraints.maxWidth > 950
            ? mainContainerWeb(context)
            : mainContainerMobile();
      },
    );
  }

  Widget mainContainerMobile() {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const SizedBox(
            height: 60,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                ' ${AppString.stringHi}',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                  color: Color(0xffED4658),
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 50),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          const SizedBox(
            height: 12,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                AppString.stringFlutterDeveloper,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontSize: 50.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                speed: const Duration(milliseconds: 200),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            ' ${AppString.stringCrossPlatformNames}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 4,
              ),
              Icon(
                Icons.location_city,
                color: clrFlutter,
                size: 20,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                ' ${AppString.stringLocation}',
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          downloadButton(),

          const SizedBox(
            height: 30,
          ),
          Stack(children: [
            const AngledDivider(height: 300.0),
            Align(
                alignment: Alignment.center,
                child: Image.network(
                  AppUrls.urlMainImage,
                  height: 250,
                  width: 250,
                ))
          ]),
        ],
      );
  }

  Widget mainContainerWeb(BuildContext context) {
    return Stack(children: [
        const AngledDivider(
          height: 780.0,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
          color: Colors.transparent,
          height: 780,
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            ' ${AppString.stringHi}',
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                              color: Color(0xffED4658),
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 50),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            AppString.stringFlutterDeveloper,
                            textStyle: const TextStyle(
                              fontSize: 70.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            speed: const Duration(milliseconds: 200),
                          ),
                        ],
                        totalRepeatCount: 1,
                        pause: const Duration(milliseconds: 100),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        ' ${AppString.stringCrossPlatformNames}',
                        style:  TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 4,
                          ),
                          Icon(
                            Icons.location_city,
                            color: clrFlutter,
                            size: 20,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            ' ${AppString.stringLocation}',
                            style: TextStyle(
                              fontSize: 14.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      downloadButton(),
                      const Spacer(),
                    ],
                  )),
              Expanded(
                flex: 5,
                child: Image.network(
                AppUrls.urlMainImage,
                  height: 550,
                ),
              ),
            ],
          ),
        ),
      ]);
  }

  InkWell downloadButton() {
    return InkWell(
                      onTap: (){
                        openMyCv();
                      },
                      child: Image.asset(
                        Assets.assetsDb,
                        height: 60,
                      ),
                    );
  }

}