import 'package:flutter/material.dart';
import 'package:dishplease_app/config/constants.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 138.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            size: 34.0,
            semanticLabel: 'Hamburger menu',
          ),
          const Spacer(),
          Text.rich(
            TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                color: AppColors.cBlackish,
                fontFamily: Fonts.textFamily,
                fontSize: Fonts.header2,
              ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 100),
                    child: Text(
                      'Remy',
                      style: TextStyle(
                        color: AppColors.cSecondaryColor,
                        fontFamily: Fonts.textFamily,
                        fontSize: Fonts.header2,
                      ),
                    ),
                  ),
                ),
                const TextSpan(
                  text: '!',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
