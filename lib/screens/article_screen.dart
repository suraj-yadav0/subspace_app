import 'package:flutter/material.dart';
import 'package:subspace_app/helper.dart';
import 'package:subspace_app/home.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
              onPressed: () {
                 setState(() {
                        isFavourite =
                            !isFavourite;
                      });
              }, icon: Icon(isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border),),
        ],
        elevation: 4,
        title: const Center(
          child: Text(
            "Article Category",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                // color: const Color.fromARGB(255, 233, 97, 167),
                padding: const EdgeInsets.all(20),
                child: Image.network(
                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.fill,
                ),
              ),
              const Text(
                "Look How Beutiful She is ? Check out her",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15,),
              const Text("This assignment challenges the Flutter developer to create an engaging mobile app that fetches data from an API and provides a pleasant user experience with interactive elements. It also encourages them to use Flutter's state management capabilities and error handling best practices.This assignment challenges the Flutter developer to create an engaging mobile app that fetches data from an API and provides a pleasant user experience with interactive elements. It also encourages them to use Flutter's state management capabilities and error handling best practices.This assignment challenges the Flutter developer to create an engaging mobile app that fetches data from an API and provides a pleasant user experience with interactive elements. It also encourages them to use Flutter's state management capabilities and error handling best practices."),
          const SizedBox(height: 20,),
   Center(child: TextButton(onPressed: (){
fetchBlogs();
   }, child: const Text("check")),)
            ],
          ),
        ),
      ),
    );
  }
}
