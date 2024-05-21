import 'package:contract/page/home/home_page.dart';
import 'package:contract/structure/class/activityData.dart';
import 'package:contract/widget/home_content.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/config/.env');

  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_KEY'),
  );

  runApp(Contract());
}

class Contract extends StatefulWidget {
  const Contract({super.key});

  @override
  State<Contract> createState() => _ContractState();
}

class _ContractState extends State<Contract> {
  ActivityData activityData = ActivityData();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'TitleMain',
        home: Scaffold(
          body: HomePage(),
        )
    );
  }
}

