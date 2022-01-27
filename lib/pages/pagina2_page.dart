import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Página 2' ),
      ),      
      backgroundColor: Colors.green,
      body: const Center(
        child: Text('Pagina2Page'),
     ),
   );
  }
}