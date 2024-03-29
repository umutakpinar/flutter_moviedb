import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_moviedb/common/app/core/bottomNavItems.dart';
import 'package:flutter_moviedb/common/app/cubit/nav_index_cubit.dart';
import 'package:flutter_moviedb/common/app/router/routes/routes.dart';
import 'package:flutter_moviedb/data/bloc/trending_movies_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavIndexCubit(),
        ),
        BlocProvider(create: (context) => TrendingMoviesBloc()..add(FetchTrendingMoviesEvent()),) //Ekran yuklenir yuklenmez initialEventten ciksin diye 
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<NavIndexCubit>().state,
        children: bottomNavbarRoutes,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        currentIndex: context.read<NavIndexCubit>().state,
        items: bottomNavBarItems,
        onTap: (value) =>
            BlocProvider.of<NavIndexCubit>(context).changeIndex(value),
      ),
    );
  }
}

