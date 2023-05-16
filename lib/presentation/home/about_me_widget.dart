import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:hasanmemoodportfolio/src/string.dart';

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return constraints.maxWidth > 950
              ? aboutMeWeb()
              : aboutMeMobile();
        },
      );

  }

  Widget aboutMeMobile() {
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 30,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(20))),
                      width: 30,
                      alignment: Alignment.topLeft,
                    ),
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '  ${AppString.stringAboutMe}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                AppString.stringAboutMeDetail,
                style: TextStyle(
                  height: 2,
                  letterSpacing: 1.2,
                  fontSize: 12.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.network(AppUrls.urlAboutImage, width: 250, height: 250),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5)),
                          border: Border.all(
                              color: Colors.deepOrangeAccent
                                  .withOpacity(0.5))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            AppString.stringExperienceCount,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            AppString.stringExperienceYear,
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.deepOrangeAccent
                                .withOpacity(0.5),
                          ),
                          bottom: BorderSide(
                            color: Colors.deepOrangeAccent
                                .withOpacity(0.5),
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            AppString.stringProjectCount,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            AppString.stringProjectsComplete,
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          border: Border.all(
                              color: Colors.deepOrangeAccent
                                  .withOpacity(0.5))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            AppString.stringGraduationYear,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            AppString.stringGraduationBcse,
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
  }

  Widget aboutMeWeb() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 4,
                child: Image.network(
                  AppUrls.urlAboutImage,
                  width: 400,
                  height: 400,
                )),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20))),
                          width: 30,
                          alignment: Alignment.topLeft,
                        ),
                        const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              '  ${AppString.stringAboutMe}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                letterSpacing: 1.0,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(

                    padding: EdgeInsets.all(10),

                    child:  Text(
                      AppString.stringAboutMeDetail,
                      style: TextStyle(
                        height: 2,
                        letterSpacing: 1.2,
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 180,
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5)),
                            border: Border.all(
                                color: Colors.deepOrangeAccent
                                    .withOpacity(0.5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              AppString.stringExperienceCount,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 28.0),
                            ),
                            Text(AppString.stringExperienceYear),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 180,
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.deepOrangeAccent
                                  .withOpacity(0.5),
                            ),
                            bottom: BorderSide(
                              color: Colors.deepOrangeAccent
                                  .withOpacity(0.5),
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                             AppString.stringProjectCount,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 28.0),
                            ),
                            Text(AppString.stringProjectsComplete),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 180,
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            border: Border.all(
                                color: Colors.deepOrangeAccent
                                    .withOpacity(0.5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              AppString.stringGraduationYear,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 28.0),
                            ),
                            Text( AppString.stringGraduationBcse,),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
  }
}