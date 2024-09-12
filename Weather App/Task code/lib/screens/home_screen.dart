import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_10/data/get_weather_icon.dart';
import 'package:flutter_application_10/widgets/my_sized_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/weather_bloc.dart';
import '../widgets/my_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.1 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.deepPurple),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherSuccess) {
                    // Create a variable to store the formatted date
                    final formattedDate = state.weather.date != null
                        ? DateFormat('EEEE dd • h:mm a')
                            .format(state.weather.date!)
                        : '';
                    String formatTime(DateTime dateTime) {
                      return DateFormat('h:mm a').format(dateTime);
                    }

                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "📍 : ${state.weather.country}",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          mySizedBox(height: 10), // Adjust the height as needed
                          Text(
                            "${state.weather.areaName}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          mySizedBox(height: 20),
                          getWeatherIcon(
                              code: state.weather.weatherConditionCode!),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${state.weather.temperature!.celsius?.round()} °C",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "${state.weather.weatherMain!.toLowerCase()}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                mySizedBox(height: 10),
                                Text(
                                  formattedDate,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 2.1,
                                  ),
                                ),
                                mySizedBox(height: 40),
                                my_Row(
                                  imagePath1: "assets/11.png",
                                  title1: "Sunrise",
                                  subtitle1:
                                      "${formatTime(state.weather.sunrise!)}",
                                  imagePath2: "assets/12.png",
                                  title2: "Sunset",
                                  subtitle2:
                                      "${formatTime(state.weather.sunset!)}",
                                ),
                                mySizedBox(height: 10),
                                Divider(
                                  color: const Color.fromARGB(
                                      255, 98, 98, 98), // The color of the line
                                  height: 8, // The space around the divider
                                  thickness: 1, // The thickness of the line
                                  indent: 0, // The left padding of the line
                                  endIndent: 0, // The right padding of the line
                                ),
                                mySizedBox(height: 10),
                                my_Row(
                                  imagePath1: "assets/13.png",
                                  title1: "Temp Max",
                                  subtitle1:
                                      "${state.weather.tempMax!.celsius!.round()} °C",
                                  imagePath2: "assets/14.png",
                                  title2: "Temp Min",
                                  subtitle2:
                                      "${state.weather.tempMin!.celsius!.round()} °C",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
