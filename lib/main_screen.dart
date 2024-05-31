import 'package:flutter/material.dart';
import 'package:silverappbar/components/colors.dart';
import 'package:silverappbar/components/components.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final dataKey = GlobalKey(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/mainImage.png"),
                ),
                title: "The Weekend".text.size(12).white.make(),
                subtitle: "Community.11K members".text.white.size(8).make(),
              ),
            pinned: true,
            snap: false,
            floating: true,
            backgroundColor: mainColor,
            expandedHeight: 160.0,
            actions: [
              IconButton(onPressed: () {_displayAddPasswordBottomSheet(context);}, icon: const Icon(Icons.more_vert_outlined, color: Colors.white,))
            ],
            leading: const Icon(Icons.arrow_back, color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/mainImage.png", fit: BoxFit.fill),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  color: mainColor,
                  height: 70,
                  child: Center(
                    child: ListTile(
                      title: "The Weekend".text.bold.size(15).white.make(),
                      subtitle:
                          "Community.11K members".text.white.size(10).make(),
                      trailing: const Icon(Icons.share).box.make(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: dolorIpsum.text.make(),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        tagButton("Outdoor"),
                        10.widthBox,
                        tagButton("Outdoor"),
                        10.widthBox,
                        tagButton("Outdoor"),
                        10.widthBox,
                        tagButton("Outdoor"),
                      ],
                    ),
                  ),
                ),
                10.heightBox,
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Media, docs and links".text.bold.make(),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/mainImage.png",
                          width: 100,
                        ),
                        10.widthBox,
                        Image.asset(
                          "assets/mainImage.png",
                          width: 100,
                        ),
                        10.widthBox,
                        Image.asset(
                          "assets/mainImage.png",
                          width: 100,
                        ),
                        10.widthBox,
                        Image.asset(
                          "assets/mainImage.png",
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Mute Notifications".text.bold.make(),
                      10.widthBox,
                      Switch(value: false, onChanged: (value) {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.delete_outline),
                      10.widthBox,
                      "Clear Chat".text.make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.enhanced_encryption_outlined),
                      10.widthBox,
                      "Encryption".text.make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.delete_outline,
                        color: pinkColor,
                      ),
                      10.widthBox,
                      "Exit Community".text.color(pinkColor).make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.thumb_down_alt_outlined,
                        color: pinkColor,
                      ),
                      10.widthBox,
                      "Report".text.color(pinkColor).make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Members".text.bold.make(),
                      IconButton(
                          onPressed: () {
                            Scrollable.ensureVisible(
                              dataKey.currentContext!,
                              duration: const Duration(milliseconds: 700),
                              
                            );
                          }, icon: const Icon(Icons.search_outlined)),
                          
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            key: dataKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/yashika.jpeg"),
                  ),
                  title: "Yashika".text.make(),
                  subtitle: "29, India".text.make(),
                  trailing: myButton("Follow"),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
  Future _displayAddPasswordBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      useSafeArea: true,
      showDragHandle: true,
      elevation: 0,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.link_outlined),
                      10.widthBox,
                      "Invite".text.make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.person_add),
                      10.widthBox,
                      "Add Member".text.make(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.group_add_outlined,
                      ),
                      10.widthBox,
                      "Add Group".text.make(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
  }
}
