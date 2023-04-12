
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thought_box/src/appcolors/colors.dart';
import 'package:thought_box/src/widgets/data_field.dart';

class PlaygroundPage extends StatefulWidget {
  final String Row;
  final String Column;
  final String Alphabets;

  const PlaygroundPage({Key? key, required this.Row, required this.Column, required this.Alphabets}) : super(key: key);

  @override
  State<PlaygroundPage> createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.black,

        title: Text('Playground'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          DataField(Title: "Play Text", width: double.infinity.w,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.window),
                SizedBox(
                  width: 10,
                ),
                Text('All Directions'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridViews( Row: '', Column: '', Alphabets: '',),
          )
        ],
      ),
    ));
  }
}

class GridViews extends StatefulWidget {
  final String Row;
  final String Column;
  final String Alphabets;
  const GridViews({Key? key,  required this.Row, required this.Column, required this.Alphabets, }) : super(key: key);

  @override
  State<GridViews> createState() => _GridViewsState();
}

class _GridViewsState extends State<GridViews> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5 ,crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
        itemBuilder: (_, index) {
          return Card(
            elevation: 15,
            child: Container(
              height: 20.h,
              width: 20.w,
              decoration: BoxDecoration(
                  color: AppTheme.colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text("jh"),
              ),
            ),
          );
        });
  }
}
