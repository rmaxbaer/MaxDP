import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dishplease_app/components/home_page_header.dart';
import 'package:dishplease_app/components/popular_places.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:dishplease_app/config/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  static const String id = 'Home';

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomePageHeader(),
              PopularPlaces(),
              LogOutButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          await Amplify.Auth.signOut();
        } on AuthException catch (e) {
          if (kDebugMode) {
            print(e.message);
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              PhosphorIcons.signOut,
              color: Colors.white,
              size: 48.0,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                fontSize: 24.0,
                color: AppColors.cWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
