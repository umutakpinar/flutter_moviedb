import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_moviedb/common/app/theme/app_theme.dart';
import 'package:flutter_moviedb/data/bloc/trending_movies_bloc.dart';
import 'package:flutter_moviedb/data/model/trending_movies_weekly.dart';

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
                    width: viewportConstraints.maxWidth,
                    child: BlocBuilder<TrendingMoviesBloc, TrendingMoviesState>(
                      builder: (context, state) {
                        late final TrendingMoviesWeekly response;
                        late final List<Result> trends;
                        int itemCount = 5;
                        if (state is TrendingMoviesSuccessState) {
                          response = state.results;
                          trends = response.results;
                          itemCount = 10;
                        } else {}

                        return ListView.builder(
                          padding: const EdgeInsets.only(
                            left: 12,
                          ),
                          itemBuilder: (context, index) => Row(
                            children: [
                              Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  border: const Border(
                                      top: BorderSide(
                                          color: Colors.black,
                                          style: BorderStyle.solid)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      itemCount != 5
                                          ? "http://image.tmdb.org/t/p/w500/${trends[index].posterPath}"
                                          : "https://i.ytimg.com/vi/rumF8zJUFYI/sddefault.jpg?sqp=-oaymwEmCIAFEOAD8quKqQMa8AEB-AHeA4AC4AOKAgwIABABGGUgZShlMA8=&rs=AOn4CLBetpZfRpGjZ-Z0To7ykofzqT43XQ",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: itemCount != 5
                                          ? Text(
                                              trends[index].originalTitle,
                                              textAlign: TextAlign.center,
                                            )
                                          : const CircularProgressIndicator(),
                                    ),
                                    Positioned(
                                      bottom: -10,
                                      left: 5,
                                      child: Text((index + 1).toString(),
                                          style: const TextStyle(
                                              fontSize: 75,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                    color: Colors.black,
                                                    offset: Offset(5, 5),
                                                    blurRadius: 5),
                                              ])),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(right: 12)),
                            ],
                          ),
                          itemCount: itemCount,
                          scrollDirection: Axis.horizontal,
                        );
                      },
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
                    GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 12,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 16 / 25,
                              crossAxisCount: 3,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                      itemBuilder: (context, index) => Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.orange,
                        ),
                        child: const Center(child: Text("Movie")),
                      ),
                    ),
                  ],
                ),
                //Categorical Preview End
                // ------- TEST ------
                // BlocBuilder<TrendingMoviesBloc, TrendingMoviesState>(
                //   builder: (context, state) {
                //     return Text(state.toString());
                //   },
                // ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
