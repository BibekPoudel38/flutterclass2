import 'package:flutter/material.dart';

class SamsungWidget extends StatelessWidget {
  const SamsungWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.gadgetbytenepal.com/wp-content/uploads/2021/02/Samsung-TU8000-55-4K-TV-Review.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text("Samsung 4k UHD tv"),
                      subtitle: const Text("Samsung electronics"),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: Colors.pink,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.place_outlined,
                          ),
                          SizedBox(width: 10),
                          Text("Mahendrapool pokhara"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
