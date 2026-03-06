import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

int like = 0;
int comment = 0;
int share = 0;

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Center(child: CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/logofe.jpg'),)),
            SizedBox(height: 24,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      SizedBox(height: 8,),
                      Text('Muhammad Akmal Wildannov', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Text('255150400111009', style: TextStyle(fontWeight: FontWeight.w500),),
                      SizedBox(height: 12,),
                      Text('Front End Intern @Basic Computing Community'),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(like.toString()),
                              Text('Like'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(comment.toString()),
                              Text('Comment'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(share.toString()),
                              Text('Share'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: () {
                            setState(() {
                              like++;
                              print("adding 1 to like , now : $like");
                            });
                          }, child: Text('Like')),
                          ElevatedButton(onPressed: () {
                            setState(() {
                              comment++;
                              print('comment now: $comment');
                            });
                          }, child: Text('Comment')),
                          ElevatedButton(onPressed: () {
                            setState(() {
                              share++;
                            });
                          }, child: Text('Share')),
                        ],
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: () {
                        setState(() {
                          comment = 0;
                          like = 0;
                          share = 0;
                        });
                      }, child: Text('Reset', style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
                    ],
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