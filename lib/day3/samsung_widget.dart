import 'package:flutter/material.dart';

class SamsungWidget extends StatefulWidget {
  const SamsungWidget({Key? key}) : super(key: key);

  @override
  State<SamsungWidget> createState() => _SamsungWidgetState();
}

class _SamsungWidgetState extends State<SamsungWidget> {
  bool fav = false;
  changeFav() {
    fav = !fav;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My App")),
      body: Column(
        mainAxisSize: MainAxisSize.min,
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
                        icon: Icon(
                          fav ? Icons.favorite : Icons.favorite_outline,
                          color: Colors.red,
                        ),
                        onPressed: changeFav,
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
