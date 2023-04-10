import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_project/riverpod/my_home_page_river_pod_screen.dart';
import 'package:flutter_test_project/riverpod/user_data_screen.dart';


final nameProvider = Provider<String>((ref)=> "dhananjay pathak"
);

main()=>runApp(
      const ProviderScope(child: MyApp())
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: UserDataScreen(),
    );
  }
}
