import 'package:flutter/material.dart';
import 'package:flutter_moviedb/common/app/theme/app_theme.dart';
import 'package:flutter_moviedb/features/home/core/bottomNavItems.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("What do you want to watch?")),
      body: LayoutBuilder(
        builder: (context, viewportConstraints) => ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: viewportConstraints.maxHeight,
              minHeight: viewportConstraints.maxHeight),
          child: IntrinsicHeight(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Searchbar Start
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                  child: SearchBar(
                    backgroundColor: MaterialStatePropertyAll(
                        AppTheme.searchbarBackgroundColor),
                    hintText: "Search",
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.only(left: 24, right: 20)),
                    trailing: [Icon(Icons.search)],
                  ),
                ),
                //Searchbar End
                //Horizontal Scroll Top Movies Start
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 24),
                  child: SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const Padding(padding: EdgeInsets.only(right: 24)),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.red,
                          ),
                          width: 160,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 24)),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blue,
                          ),
                          width: 160,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 24)),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.green,
                          ),
                          width: 160,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 24)),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.black,
                                    style: BorderStyle.solid)),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange,
                          ),
                          width: 160,
                        ),
                        const Padding(padding: EdgeInsets.only(right: 24)),
                      ],
                    ),
                  ),
                ),
                //Horizontal Scroll Top Movies End
                //Categorical Preview Start
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxHeight: 50),
                          child: Center(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 1"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 2"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 3"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 4"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 5"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 6"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 7"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 8"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 9"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Demo 10"),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Container(
                        height: 600,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          shrinkWrap: false,
                          gridDelegate:
                             const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 25/16,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 10),
                          itemBuilder: (context, index) => Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.orange,
                            ),
                            child: const Center(child :  Text("Movie")),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Categorical Preview End
              ],
            ),
          )),
        ),
      ),
      //Burada BottomNavigationBar widgeti kullanmalıymışsın!
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        items: bottomNavBarItems,
        onTap: (value) => null,
      ),
    );
  }
}
