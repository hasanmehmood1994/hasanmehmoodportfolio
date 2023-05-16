

import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/app_style.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:hasanmemoodportfolio/src/string.dart';

import '../../components/dot_circle_widget.dart';


class EducationContainer extends StatelessWidget {
  const EducationContainer({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Image.network(AppUrls.urlEducationImage, height: 300),
        Row(
          children: [
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    DotCircle(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(AppString.stringUniversity,style:AppStyle. txtCustom1Style),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    DotCircle(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppString.stringClg,style:AppStyle. txtCustom1Style,),
                  ],
                ),
              ],
            ),
            const Spacer(),
          ],
        )
      ],
    );
  }
}