import 'package:flutter/material.dart';

class Messagewidget extends StatelessWidget{
  const Messagewidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true,
            toolbarHeight: 50,
            leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(),
          ),
          title: Text('Messages', style: TextStyle(
            color: Colors.black
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.settings,color: Colors.black,))
            ],
          ),
          SliverAppBar(
            pinned: true,
            titleSpacing: 0,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: IntrinsicWidth(
                          child: TextField(
                           textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search for people and groups',
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Colors.grey[200]!), ),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Colors.grey[200]!)),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Colors.grey[200]!), ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Divider(color: Colors.black,)
              ],
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              leading: CircleAvatar(),
              title: Row(
                children: [
                  Text('Fayobi', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),
                  SizedBox(width: 5,),
                  Text('@fraogunsanmi', style: TextStyle(
                    fontSize: 14
                  ),)
                ],
              ),
              subtitle: Row(
                children: [
                  Text('You:'),
                  SizedBox(width: 5,),
                  Text('Hello my brother')
                ],
              ),
              trailing: Text('18/10/2021'),
            ),
            childCount: 20
          ),
          )
        ],
      ),
    );
  }
}