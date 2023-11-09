import 'package:flutter/material.dart';

class SearchingResultPage extends StatelessWidget {
  const SearchingResultPage({
    super.key,
    required this.filteredItems,
  });

  final List<String> filteredItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 1,
                    child: Center(
                      child: ListTile(
                        // user profile picture
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue[900],
                          radius: 45,
                          child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  Image.asset('assets/images/polat.jpg').image),
                        ),

                        // user name
                        title: Text(
                          filteredItems[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        // last message
                        subtitle: Text(''
                            // widget.description,
                            // maxLines: 3,
                            ),

                        //Accept online
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blue[900]),
                              child: Text(
                                'Accepts online',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Text(
                            //   widget.subtitle,
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //       color: Colors.black, fontWeight: FontWeight.w500),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
