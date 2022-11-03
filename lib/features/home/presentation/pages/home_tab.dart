import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_connect/features/home/data/data_sources/user_remote_data_source.dart';
import 'package:quick_connect/features/home/data/repositories/users_repository.dart';
import 'package:quick_connect/features/home/domain/entities/user.dart';
import 'package:quick_connect/features/home/domain/use_cases/get_recommended_users.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();

}
List<User> users = [];

class _HomeTabState extends State<HomeTab> {


  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    UserRemoteDataSource userRemoteDataSource = UserRemoteDataSource();
    UserRepository userRepository = UserRepository(userRemoteDataSource);
    final result = await GetRecommendedUsers(userRepository).execute();
    result.fold((l) => null, (r) => {
      users = r
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Location' ,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Colors.black87
                          ),
                        ),
                        Icon(Icons.arrow_drop_down , color: Colors.black87),

                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: SvgPicture.asset(
                            'assets/svg/marker.svg' ,
                            color: Colors.black87,
                            height: 12,
                            width: 12,
                          ),
                        ),
                        const Text(
                          'Florida , USA' ,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black54
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 18 , right: 18),
                child: SvgPicture.asset(
                  'assets/svg/filter.svg' ,
                  width: 24,
                  height: 24,
                  color: Colors.black87,
                )
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 18 , right: 18),
                  child: SvgPicture.asset(
                    'assets/svg/bolt.svg' ,
                    width: 26,
                    height: 26,
                    color: Colors.black87,
                  )
              ),

            ],
          ),
          Text(
              users[1].birthDate.toString()
          ),
        ],
      ),
    );
  }

}
