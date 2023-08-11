//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:sekerme_ecommerce/app/presentation/links_views.dart';
//Archivo que contiene los links de las vistas

final appRouter = GoRouter(
  // rutas de la aplicación
  routes:[
    //La ruta inicial de la aplicación
    //initialLocation: '/',
    GoRoute(
      path: '/',
      builder: (context, state) {
        //Supabase.instance.client.auth. currentUser es null si no
        // hay un usuario logueado
        if (Supabase.instance.client.auth.currentUser != null) {
          return const HomeView();
        } else {
          //return const WelcomeScreen();
          return LoginView();
        }
      },
    ),
    GoRoute(
      path: '/home',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: '/ForgotPassword',
      name: ForgotView.name,
      builder: (context, state) => ForgotView(),
    ),
  ],
);