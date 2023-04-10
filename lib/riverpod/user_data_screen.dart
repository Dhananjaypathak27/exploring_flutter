import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test_project/dataprovider/data_provider.dart';
import 'package:flutter_test_project/models/user_model.dart';

class UserDataScreen extends ConsumerWidget {
  const UserDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("use Data"),
      ),
      body: _data.when(
        data: (data) {
          List<Data> list = _data.value?.data ?? [];
          return ListView.builder(
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListTile(
                leading: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(list[index].avatar!),
                ),
                title: Text("${list[index].firstName}"),
              ),
            ),
            itemCount: list.length,
          );
        },
        error: (err, s) => Center(
          child: Text(
            err.toString(),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
