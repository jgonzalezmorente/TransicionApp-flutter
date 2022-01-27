import 'package:flutter/material.dart';
import 'package:transicion_app/pages/pagina2_page.dart';


class Pagina1Page extends StatelessWidget {

  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Página 1' ),
      ),
      body: const Center(
        child: Text('Pagina1Page'),
     ),
     floatingActionButton: FloatingActionButton(
       child: const Icon( Icons.access_time ),
       onPressed: () {

         Navigator.push( context, _crearRuta() );

       }
    )
   );
  }

  Route _crearRuta() {

    return PageRouteBuilder(
      pageBuilder: ( BuildContext context, Animation<double> animation, Animation<double> scondaryAnimation ) => const Pagina2Page(), 
      //transitionDuration: const Duration( seconds: 2),
      transitionsBuilder: ( context, animation, secondaryAnimation, child ) {

        final curvedAnimation = CurvedAnimation(
          parent: animation, 
          curve: Curves.easeInOut
        );

        // return SlideTransition(
        //   position: Tween<Offset>( begin: const Offset( 0.0, -1 ), end: Offset.zero ).animate( curvedAnimation ),
        //   child: child
        // );

        // return ScaleTransition(
        //   child: child,
        //   scale: Tween<double>( begin: 0.0, end: 1.0 ).animate(curvedAnimation)
        // );

        // return RotationTransition(
        //   child: child,
        //   turns: Tween<double>( begin: 0.0, end: 1.0 ).animate(curvedAnimation)
        // );

        // return FadeTransition(
        //   child: child,
        //   opacity: Tween<double>( begin: 0.0, end: 1.0 ).animate(curvedAnimation)
        // );

        return RotationTransition(
          child: FadeTransition(
            child: child,
            opacity: Tween<double>( begin: 0.0, end: 1.0 ).animate(curvedAnimation)
          ),
          turns: Tween<double>( begin: 0.9, end: 1.0 ).animate(curvedAnimation)
        );
        
      },
    );


  }

}