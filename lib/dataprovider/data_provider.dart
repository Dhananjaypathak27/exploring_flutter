import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_project/models/user_model.dart';
import 'package:flutter_test_project/services/services.dart';

final userDataProvider = FutureProvider<UserModel>((ref) => ref.watch(userProvider).getUser());