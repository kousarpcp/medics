import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medics/colorConstant.dart';
import 'package:medics/iconConstant.dart';

import 'main.dart';

class articles extends StatefulWidget {
  const articles({super.key});

  @override
  State<articles> createState() => _articlesState();
}

class _articlesState extends State<articles> {
  TextEditingController articleController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white24,
        // resizeToAvoidBottomInset: false,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: width * 0.05,
            width: width * 0.8,
            child: Padding(
              padding: EdgeInsets.only(left: width*0.023),
              child: Padding(
                padding:  EdgeInsets.all(width*0.007),
                child: SvgPicture.asset(
                  iconConst.back,
                ),
              ),
            ),
          ),
        ),
        title:  Text(
          "Articles",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: width*0.063
          ),
        ),
        actions: [Row(
          children: [
            SvgPicture.asset(iconConst.columnDot),
            SizedBox(width: width*0.05,)
          ],
        )],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: width*0.14,
              width: width*0.88,
              decoration: BoxDecoration(
                color:ColorConst.white,
                borderRadius: BorderRadius.circular(width*0.08),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.295), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 03, // Blur radius
                    offset: Offset(0, 3), // Offset
                  ),
                ],
              ),
              child: TextFormField(
                controller:articleController ,
                // textCapitalization: TextCapitalization.sentences,
                keyboardType:TextInputType.text ,
                autofocus: false,
                textInputAction: TextInputAction.next,
                // maxLines:6,
                // minLines: 2,
                // maxLength: 4,
                // obscureText: true,
                // obscuringCharacter: "*",

                style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(

                  prefixIcon: SizedBox(
                    height: width*0.03,
                      width: width*0.05,
                      child: Center(child: SvgPicture.asset(iconConst.search,width: width*0.06,))),
                  // suffixText:"kousar",

                  labelStyle: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500,
                  ),
                  hintText: "Search articles, news...",
                  hintStyle: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConst.gray.withOpacity(0.12),
                    ),
                    borderRadius: BorderRadius.circular(width*0.08),
                  ),

                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: width*0.16,
                  width: width*0.53,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Popular Articles",style: TextStyle(fontSize: width*0.07,fontWeight: FontWeight.w700),),
                    ],
                  )),
            ],
          ),
         ListView.separated(
             itemBuilder: itemBuilder,
             separatorBuilder: separatorBuilder,
             itemCount: itemCount
         )
         Row(
           children: [
             Container(
               height: width*0.17,
               width: width*0.33,
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(width*0.02)
               ),
             ),
             Container(
               height: width*0.17,
               width: width*0.33,
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(width*0.02)
               ),
             ),
             Container(
               height: width*0.17,
               width: width*0.33,
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(width*0.02)
               ),
             ),
           ],
         ),
        ],
      ),
    );
  }
}
