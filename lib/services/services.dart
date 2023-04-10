import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_project/models/user_model.dart';
import 'package:http/http.dart';

class ApiServices{
  String endPoint = "https://reqres.in/api/users?page=2";
  Future<UserModel> getUser() async{
    Response response = await get (Uri.parse(endPoint));
    print(response.body);
    if(response.statusCode == 200){
      // final UserModel result = jsonDecode(response.body);
      return UserModel.fromJson(jsonDecode(response.body));

    }
    else{
      throw Exception(response.reasonPhrase);
    }
  }
}

final userProvider = Provider<ApiServices>((ref)=>ApiServices());
final userString = Provider<String>((ref) => "Simple String");