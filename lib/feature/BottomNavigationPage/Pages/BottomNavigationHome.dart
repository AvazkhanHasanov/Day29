import 'package:day_29_vazifa/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://fakestoreapi.com',
  ),
);

Future<List> topChef() async {
  var respone1 = await dio.get('/products');
  return respone1.data;
}

class BottomNavigationHome extends StatefulWidget {
  const BottomNavigationHome({super.key});

  @override
  State<BottomNavigationHome> createState() => _BottomNavigationHomeState();
}

class _BottomNavigationHomeState extends State<BottomNavigationHome> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: topChef(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Somthing went wrong...${snapshot.error}'),
            ),
          );
        } else if (snapshot.hasData) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: (){
            setState(() {

            });
            },child: Icon(Icons.refresh),),
            extendBody: true,
            backgroundColor: AppColors.beige,
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                snapshot.data![index]['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: AppColors.brownF9,
                                ),
                              ),
                              Text(
                                snapshot.data![index]['price'].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  color: AppColors.brownF9,
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  snapshot.data![index]['description'],
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    color: AppColors.brownF9,
                                  ),
                                ),
                              ),
                              Image.network(
                                snapshot.data![index]['image'],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(
              child: Text('somthing went wring... Again...'),
            ),
          );
        }
      },
    );
  }
}
