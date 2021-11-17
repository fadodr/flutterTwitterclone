import 'package:flutter/material.dart';
import 'package:twitterclone/widget/notificationwidget.dart';

class Searchwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(),
          ),
          title: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: IntrinsicWidth(
                      child: TextField(
                       textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.settings))
            ],
          ),
          SliverToBoxAdapter(
              child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 30,
            elevation: 0,
            centerTitle: false,
            title: Text('Nigeria trends', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          SliverList(          
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1 . Trending'),
                        Text('#EndSars', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        Text('166K Tweets'),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                  ],
                ),
              ),
              childCount: 7
            )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (){}, child: Text('Show more', style: TextStyle(
                          color: Colors.blue
                        ),)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: 18,))
                      ],
                    ),
                  ),
                  Divider(color: Colors.black,)
                ],
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 30,   
              elevation: 0,
              pinned: true,
              centerTitle: false,
              title: Text('What\'s happening', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
           SliverList(          
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1 . Trending'),
                        Text('#EndSars', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        Text('166K Tweets'),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                  ],
                ),
              ),
              childCount: 15
            )),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (){}, child: Text('Show more', style: TextStyle(
                          color: Colors.blue
                        ),)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: 18,))
                      ],
                    ),
                  ),
                  Divider(color: Colors.black,)
                ],
              ),
            ),
        ],
      ),
    );
  }
}