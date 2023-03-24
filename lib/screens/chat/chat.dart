import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/bottom_app_nav.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(backgroundColor:Colors.deepPurple[50],
          bottomNavigationBar: BottomAppNav(index: 1),
          body: NestedScrollView(
              headerSliverBuilder: (context, innerboxScrolled) => [
                SliverAppBar(
                  backgroundColor: Colors.deepPurple[50],actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications))
                ],
                  expandedHeight: MediaQuery.of(context).size.height * 0.25,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(36),
                                    bottomRight: Radius.circular(36))),
                          ),
                        ],
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          top: MediaQuery.of(context).size.height * 0.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              'Chats',
                              style: GoogleFonts.metrophobic(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Positioned(
                          bottom: 15,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 54,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 3,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Search for any item',
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff564787))),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff564787))),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff564787))),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ]),
                  ),
                ),
              ],
              body: ListView.builder(itemCount: 1,itemBuilder: (context,int index){
                return Column(children: [
                  Container(child: Row(children: [
                    const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80")),
                    Column(children: [
                      Text("Heading"),
                      Text("Latest message ...")
                    ],)
                  ],),)
                ],);
              })),
        ));
  }
}