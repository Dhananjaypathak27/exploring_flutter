import 'package:flutter/material.dart';

enum Pet { dog, cat }

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  Pet _pet = Pet.dog;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Screen"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            // CustomRadioButton(Pet.dog.toString(), 0),
            // CustomRadioButton(Pet.cat.toString(), 1),
            myCustomRadioButton(Pet.dog, 0),
            myCustomRadioButton(Pet.cat, 1)
          ],
        ),
      ),
    );
  }

  Widget CustomRadioButton(String text, int index) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.green : Colors.black,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color: (value == index) ? Colors.green : Colors.black)),
    );
  }


  Widget myCustomRadioButton(Pet petName,int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          value = index;
        });
      },
      child: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                    width: 2,
                    color: value == index ? Colors.blue : Colors.grey,
                    strokeAlign: BorderSide.strokeAlignCenter)),
            child: Row(
              children: [
                Icon(value == index ? Icons.radio_button_checked : Icons.radio_button_off, color: value == index ? Colors.blue : Colors.grey,),
                SizedBox(width: 20,),
                // Radio(
                //     value: petName, groupValue: _pet, onChanged: (Pet? petValue){
                //   setState(() {
                //     _pet = petValue!;
                //     value = index;
                //   });
                // }),
                Text(petName.name),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
