import 'package:flutter/material.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/typography.dart' as app_typo;
import 'package:flutter_education/utils/images.dart' as app_img;

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final ScrollController scrollController2 = ScrollController();
    return ListView(
      controller: scrollController,
      children: [
        Text(
          'Lorem Ipsum',
          textAlign: TextAlign.center,
          style: app_typo.heading2,
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: GridView.builder(
              controller: scrollController2,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12),
              itemCount: 12,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: app_color.ternary)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum',
                          style: app_typo.titleText16,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: app_typo.titleGreyText12,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            backgroundColor: app_color.primary,
                            child: Text('10+',
                                style: app_typo.titleText15
                                    .copyWith(color: app_color.white)),
                          ),
                        )
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
