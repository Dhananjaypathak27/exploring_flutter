import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_river_pod_screen.dart';


final counterProvider = StateProvider<int>((ref) => 0,);

class MyHomePageRiverPodScreen extends ConsumerWidget {
  const MyHomePageRiverPodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    
    ref.listen(counterProvider, (previous, next) { 
      
      if(next==5){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("value is 5")));
      }
      
      
    });
    
    return Scaffold(
      appBar: AppBar(
        title: Text("River pod"),
        actions: [
          IconButton(onPressed: (){

            ref.invalidate(counterProvider);

          }, icon:Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child:
        Text(ref.watch(counterProvider).toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
