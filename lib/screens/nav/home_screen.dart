import 'package:flutter/material.dart';
import 'package:flutter_education/utils/colors.dart' as app_color;
import 'package:flutter_education/utils/typography.dart' as app_typo;
import 'package:flutter_education/utils/images.dart' as app_img;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final ScrollController scrollController2 = ScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
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
          TextFormField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: "Search...",
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: app_color.grey,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                borderSide: BorderSide(color: app_color.black),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                  color: app_color.primary,
                  borderRadius: BorderRadius.circular(32)),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Text(
                "lorem ipsum",
                style: app_typo.titleText14.copyWith(color: app_color.white),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Etiam mollis metus non purus faucibus sollicitudin',
            style: app_typo.titleText16,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Etiam mollis metus non purus faucibus sollicitudin',
            style: app_typo.labelText
                .copyWith(color: app_color.grey.withOpacity(0.8)),
          ),
          const SizedBox(
            height: 12,
          ),
          for (var i = 0; i < 10; i++) ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 2, color: app_color.ternary),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem',
                        style: app_typo.titleText16,
                      ),
                      Text(
                        '24 Course',
                        style: app_typo.labelText,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.book,
                    color: app_color.secondary,
                    size: 32,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            )
          ]
        ],
      ),
    );
  }
}
