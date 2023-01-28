

import 'package:flutter/material.dart';

import '../const.dart';


class SidebarWidget extends StatefulWidget {
  final Size size;
  const SidebarWidget({Key? key, required this.size}) : super(key: key);

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  bool switchOne = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:widget.size.width*0.20 ,
      child: ListView(
        primary: false,
        shrinkWrap:true,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              Icon(Icons.flutter_dash),
              Expanded(
                child: ListTile(
                  title: Text(Constance.appName),
                  subtitle: Text(Constance.appSubtitle),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
              title: Text("Dashboard"),
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xff0068FF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          6,
                          6,
                        ),
                      ),
                      BoxShadow(
                        blurRadius: 12,
                        color: Color(0xffCFDBE9),
                        offset: Offset(
                          -6,
                          -6,
                        ),
                      ),
                    ],
                    gradient: LinearGradient(
                      stops: [0, 1],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff2914a2), Color(0xff221188)],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(
                      5,
                    ))),
                child: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              )),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy,
            ),
            title: Text("Deals"),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text("Client"),
          ),
          ListTile(
            leading: Icon(
              Icons.message,
            ),
            title: Text("Message"),
          ),
          ListTile(
            leading: Icon(
              Icons.list_alt,
            ),
            title: Text("My site"),
          ),


          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Settings"),
          ),

          SizedBox(height: 10,),
          Divider(

            height: 2,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Dark Mode"),
            trailing: Switch(onChanged: (bool value) {
              setState(() {
                switchOne = !switchOne;
              });
            }, value: switchOne,),

          ),

          SizedBox(height: 20,),
          Container(
            height: 200,
            width:widget.size.width*0.20 ,
            decoration: BoxDecoration(
                color: Color(0xff10062B)
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Icon(Icons.ac_unit,color: Colors.white,
                  size: 50,),
                SizedBox(height: 25,),
                const Text("Updating your plan for premium", style: TextStyle(
                    color: Colors.white
                ),),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){}, child: Text("Upgrade now"), style: ElevatedButton.styleFrom(
                    primary: Colors.blue
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}



