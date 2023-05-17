

import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';

class MyProjectsContainer extends StatelessWidget {
  final double width;
  const MyProjectsContainer({
    super.key, required this. width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

      Row(
        children: [
          Spacer(),
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
                height: 40,
                alignment: Alignment.topLeft,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  My Projects',
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
          Spacer(),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        width: width > 900 ? width / 2 : width / 1.4,
        height: width > 900 ? width / 2 : width / 1.4,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(AppUrls.urlProjectImage),
          ),
        ),
      ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(),
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
                    height: 40,
                    alignment: Alignment.topLeft,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '  Multi Platform From Single Code',
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
            Spacer(),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 300,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(AppUrls.urlGemImage),
            ),
          ),
        ),



      ],);
  }
}