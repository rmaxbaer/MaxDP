import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:dishplease_app/screens/ReviewCreation/enter_restaurant_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/models/ModelProvider.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(const DishPlease());
}

class DishPlease extends StatelessWidget {
  const DishPlease({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DishPlease',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Router(title: 'DishPlease'),
    );
  }
}

class Router extends StatefulWidget {
  const Router({super.key, required this.title});
  final String title;

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  void _configureAmplify() async {
    final provider = ModelProvider();
    final api = AmplifyAPI();

    try {
      final auth = AmplifyAuthCognito();

      final dataStorePlugin = AmplifyDataStore(modelProvider: provider);
      await Amplify.addPlugins([dataStorePlugin, api, auth]);
      await Amplify.configure(amplifyconfig);
      if (kDebugMode) {
        print('Successfully configured');
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('Error configuring Amplify: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      initialStep: AuthenticatorStep.signIn,
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: EnterRestaurantPage(),
        // initialRoute: HomePage.id,
        // routes: {
        //   HomePage.id: (context) => const HomePage(
        //         title: 'Home',
        //       ),
        //   ReviewPage.id: (context) => const ReviewPage(
        //         title: 'Review',
        //       ),
        //   ProfilePage.id: (context) => const ProfilePage(
        //         title: 'Profile',
        //       ), 
        // },
      ),
    );
  }
}
