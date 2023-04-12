import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thought_box/src/appcolors/colors.dart';
import 'package:thought_box/src/pages/playground_page.dart';
import 'package:thought_box/src/widgets/button.dart';
import 'package:thought_box/src/widgets/data_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController rowController = TextEditingController();
  TextEditingController columnController = TextEditingController();
  TextEditingController alphabetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.black,
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              'Enter the number of Rows,\nColumns and TheAlphabets',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 15,
              child: Container(
                height: 200.h,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          DataField(
                              Title: 'Rows',
                              width: 145.w,
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.number,
                              controller: rowController),
                          DataField(
                            Title: 'Columns',
                            width: 145.w,
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: columnController,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: DataField(
                          Title: 'Alphabets',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                          width: double.infinity.w,
                        controller: alphabetController,),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Button(
                      onTap: () {
                        if(rowController.text.isNotEmpty && columnController.text.isNotEmpty&&alphabetController.text.isNotEmpty){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  PlaygroundPage(Row: 'Row',
                                      Column: 'Column',
                                      Alphabets: '')));
                        }     },
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
  // late SharedPreferences prefs;
  // String Row = " ";
  // String Column = " ";
  // String Alphabets = " ";
  //
  // save() async {
  //   prefs = await SharedPreferences.getInstance();
  //   prefs.setString('text1', rowController.toString());
  //   prefs.setString('text2', columnController.text.toString());
  //   prefs.setString('text3', alphabetController.text.toString());
  // }
  //
  // retrieve() async {
  //   prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     Row = prefs.getString('text1')!;
  //     Column = prefs.getString('text2')!;
  //     Alphabets = prefs.getString('text3')!;
  //   });
  // }
  //
  // delete() async {
  //   prefs = await SharedPreferences.getInstance();
  //   prefs.remove('text1');
  //   prefs.remove('text2');
  //   prefs.remove('text3');
  //   Row = "";
  //   Column = "";
  //   Alphabets = "";
  // }
}
