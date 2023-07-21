import 'package:animated_dashed_circle/animated_dashed_circle.dart';
import 'package:animated_dashed_circle/animated_dashed_circle_view.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/Services/home_story.dart';
import 'package:insta_clone/Services/post.dart';
import 'package:insta_clone/Utils/expandable_text.dart';
import 'Stories.dart';

class HomePage extends StatefulWidget {
  // final String username;
  HomePage({super.key});

  final List<post> posts = [
    post(UserName: '43.paras.57', Likes: 52, Description: 'hey its my new pic', Image: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80', ProfilePic: 'https://instagram.fagr1-3.fna.fbcdn.net/v/t51.2885-19/340046144_1573819893114923_1993567904210653388_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fagr1-3.fna.fbcdn.net&_nc_cat=111&_nc_ohc=OimvTRSrIeUAX_H8GIg&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBzB8cbLWkBcrgg6UcZON6FVX_LGJL_kw3TvtbsRB3Q-g&oe=64BD7F89&_nc_sid=ee9879'),
    post(UserName: '43.paras.57', Likes: 52, Description: 'hey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pichey its my new pic', Image: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80', ProfilePic: 'https://instagram.fagr1-3.fna.fbcdn.net/v/t51.2885-19/340046144_1573819893114923_1993567904210653388_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fagr1-3.fna.fbcdn.net&_nc_cat=111&_nc_ohc=OimvTRSrIeUAX_H8GIg&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBzB8cbLWkBcrgg6UcZON6FVX_LGJL_kw3TvtbsRB3Q-g&oe=64BD7F89&_nc_sid=ee9879'),
    post(UserName: '43.paras.57', Likes: 52, Description: 'hey its my new pic', Image: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80', ProfilePic: 'https://instagram.fagr1-3.fna.fbcdn.net/v/t51.2885-19/340046144_1573819893114923_1993567904210653388_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fagr1-3.fna.fbcdn.net&_nc_cat=111&_nc_ohc=OimvTRSrIeUAX_H8GIg&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfBzB8cbLWkBcrgg6UcZON6FVX_LGJL_kw3TvtbsRB3Q-g&oe=64BD7F89&_nc_sid=ee9879')

  ];
  final List<home_story> stories = [
    home_story(Imgae: 'https://bit.ly/43IEnby', username: '43.paras.57'),
    home_story(Imgae: 'https://bit.ly/43IEnby', username: '43.paras.57'),
    home_story(Imgae: 'https://bit.ly/43IEnby', username: '43.paras.57'),
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 50,
              floating: true,
              snap: true,
              title: Row(
                children: [
                  const SizedBox(width: 10),
                  const Image(
                    height: 55,
                    width: 110,
                    image: AssetImage(
                      'assets/images/home_page/instagram.png',
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Transform.rotate(
                    angle: -45 * (3.14 / 180),
                    child: const Icon(
                      Icons.send_sharp,
                      size: 25,
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.black,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.stories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoriesPage(selected_page: index,)));
                                  },
                                  child: AnimatedDashedCircle().show(
                                    image: NetworkImage(widget.stories[index].Imgae),
                                    contentColor: Colors.black,
                                    height: 80,
                                  ),
                                ),
                              ),
                              Text(
                                index == 0?'Your Story':widget.stories[index].username,
                                style: const TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      bool liked = false;
                  return Column(
                    children: [
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.1,
                      ),
                      Card(
                        color: Colors.black,
                        elevation: 0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      widget.posts[index].ProfilePic,
                                    ),
                                    radius: 15,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    widget.posts[index].UserName,
                                    style: const TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.settings, // TODO: 3 dots ka icon lagega
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                            Image(
                              image: NetworkImage(
                                widget.posts[index].Image,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: () {  },
                                    icon :const Icon(Icons.favorite_outline),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.comment,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Transform.rotate(
                                    angle: -45 * (3.14 / 180),
                                    child: const Icon(
                                      Icons.send_sharp,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.save_alt,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${widget.posts[index].Likes} likes',
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ExpandableText(
                                text: widget.posts[index].Description,
                                maxLines: 3, // Set the number of lines before the "more" button appears
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
                childCount: widget.posts.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'ICON1',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'ICON2',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'ICON3',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'ICON4',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              label: 'ICON5',
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}