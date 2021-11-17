import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitterclone/detailtweetscreen.dart';

class Feedwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView( 
          slivers: [
            const SliverAppBar(
              floating: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
              title: Text('Home'),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.star),
                )
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Detailtweetscreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.5)
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Expanded(
                                   child: Row(
                                    children:const [
                                      Text('Pulse Nigeria'),
                                      SizedBox(width: 7,),
                                      Flexible(child: Text('@PulseNigeria555555555555555555555555', overflow: TextOverflow.ellipsis,)),
                                      SizedBox(width: 7,),
                                      Text('.14h')
                                    ],                          ),
                                 ),
                                const Icon(Icons.more_horiz,)
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Container(
                                width: double.infinity,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    spacing: 5,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: const [
                                      Icon(CupertinoIcons.chat_bubble, size: 18,),
                                      Text('63')
                                    ],
                                  ),
                                  Wrap(
                                    spacing: 5,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: const [
                                      Icon(CupertinoIcons.arrow_2_squarepath, size: 18,),
                                      Text('21')
                                    ],
                                  ),
                                  Wrap(
                                    spacing: 5,
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    children: const [
                                      Icon(CupertinoIcons.heart, size: 18,),
                                      Text('104')
                                    ],
                                  ),
                                  const Icon(Icons.ios_share_outlined, size: 20,)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                childCount: 100
              ))
          ],
        ),
    );
  }
}