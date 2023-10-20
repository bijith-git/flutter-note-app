import 'package:flutter/material.dart';
import 'package:noteapp_flutter/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var texttheme = Theme.of(context).textTheme;
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          "All Notes",
          style: texttheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: defualtPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
              child: TextFormField(
                onTapOutside: (event) {
                  Focus.of(context).unfocus();
                },
                showCursor: false,
                textAlign: TextAlign.justify,
                decoration: textDecoration.copyWith(
                    hintText: "Search Notes",
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    hintStyle: texttheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Categories",
              style: texttheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          width: 60,
                          height: 60,
                        );
                      }),
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    width: 60,
                    height: 60,
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, i) {
                    return Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffb3b2be))),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Note Title",
                                  style: texttheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5),
                                ),
                                Text(
                                  "Yesterday",
                                  style: texttheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: .5),
                                )
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: texttheme.bodyMedium!
                                  .copyWith(letterSpacing: .5),
                            ),
                          ]),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            const BottomNavigationBarItem(
                icon: Icon((Icons.edit_document)), label: "Notes"),
            const BottomNavigationBarItem(
                icon: Icon((Icons.star_border_rounded)), label: "Stared"),
            const BottomNavigationBarItem(
                icon: Icon((Icons.toc_outlined)), label: "Todo"),
            const BottomNavigationBarItem(
                icon: Icon((Icons.settings_rounded)), label: "Setting"),
          ]),
    );
  }
}
