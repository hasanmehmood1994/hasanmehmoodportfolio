
import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/app_style.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:hasanmemoodportfolio/src/string.dart';

import '../../components/custom_widgets.dart';
import '../../components/dot_circle_widget.dart';

class ContactMeContainer extends StatelessWidget {
  const ContactMeContainer({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return  Column(

      children: [
        Image.network(AppUrls.urlContactImage, height: 300),
        Row(
          children: [
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    DotCircle(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(AppString.stringLocation,style: AppStyle.txtCustom1Style),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    DotCircle(),
                    SizedBox(
                      width: 10,
                    ),
                    Text(AppString.stringPhone,style: AppStyle.txtCustom1Style),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    DotCircle(),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${AppString.stringEmail}\n${AppString.stringEmail2}",style: AppStyle.txtCustom1Style,),

                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const DotCircle(),
                    const SizedBox(
                      width: 10,
                    ),
                  InkWell(
                    onTap: (){
                      openLinkedIn();
                    },
                      child: const Text("LinkedIn",style: AppStyle.txtCustom1Style)),
                    const SizedBox(
                      width: 6,
                    ),
                  linkedInButton(),

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
