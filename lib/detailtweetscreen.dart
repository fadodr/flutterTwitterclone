import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailtweetscreen extends StatelessWidget{
  const Detailtweetscreen({Key? key}) : super(key: key);
  static const routename = '/detailtweetscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text('Tweet', style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),
      ),
       bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[700],
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_alt_fill), label: '' ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail), label: '')
        ]),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(),
                      title: Text('LEGO'),
                      subtitle: Text('@LEGO_Group'),
                    ),
                    const Text('Mindfulness never looked so awesome'),
                    const SizedBox(height: 10,),
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('10:20'),
                        Text(' . '),
                        Text('16/11/2021'),
                        Text(' . '),
                        Text('Twitter for iPhone', style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                    Divider(color: Colors.grey[500],),
                    Row(
                      children: [
                        Wrap(
                          spacing: 5,
                          children: const [
                            Text('14', style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            Text('Retweets')
                          ],
                        ),
                        SizedBox(width: 10),
                        Wrap(
                          spacing: 5,
                          children: const [
                            Text('1', style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            Text('Quote Tweet')
                          ],
                        ),
                        const SizedBox(width: 10),
                        Wrap(
                          spacing: 5,
                          children: const [
                            Text('14'),
                            Text('Likes')
                          ],
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[500],),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              ),
            ),
            Divider(color: Colors.grey[500],),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    filled: true,
                    hintText: 'Tweet your reply',
                    hintStyle: TextStyle(
                      fontSize: 15
                    ),
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide(color: Colors.grey[300]!)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide(color: Colors.grey[300]!)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide(color: Colors.grey[300]!))
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}