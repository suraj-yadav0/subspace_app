import 'package:flutter/material.dart';
import 'package:subspace_app/helper.dart';
import 'package:subspace_app/models/category_model.dart';
import 'package:subspace_app/screens/article_screen.dart';
import 'package:subspace_app/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ArticleModel>? post;
  var isLoaded  = false;
  @override
  void initState() {
//getData();
    super.initState();
  }

//   getData() async {
//  //post = await RemoteServices().getPosts();
//  if(post != null) {
//     setState(() {
//       isLoaded = true;
//     });
//   }
//   }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        elevation: 4,
        title: const Center(
          child: Text(
            "Discover",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
      ),
       body: Visibility(
      //   visible: isLoaded,
      //   replacement: const Center(child: CircularProgressIndicator(),),
        child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: post?.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ArticleScreen())),
                child: Container(
                  // this is for image
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: const Color.fromARGB(255, 233, 97, 167), width: 3),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // this is for image
                          height: 100,
                          color: const Color.fromARGB(255, 233, 97, 167)
                              .withOpacity(.5),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            // this is for heading and stuff
                            height: 100,
                            child: const Text(
                              "Look How Beutiful She is ? Check out her",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            
      ),
    );
  }
}
