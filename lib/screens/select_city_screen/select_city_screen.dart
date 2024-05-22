import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/map_provider/map_controller_provider.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Suggestion {
  final String displayName;
  final double latitude;
  final double longitude;

  Suggestion(
    this.displayName,
    this.latitude,
    this.longitude,
  );
}

class SelectCityScreen extends ConsumerStatefulWidget {
  const SelectCityScreen({super.key});

  @override
  ConsumerState<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends ConsumerState<SelectCityScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Suggestion> _suggestions = [];
  Suggestion? suggestion;

  void _fetchSuggestions(String input) async {
    if (input.isEmpty) {
      setState(() {
        _suggestions = [];
      });
      return;
    }

    // Replace with your API call to fetch suggestions
    final response = await http.get(Uri.parse(
        'https://nominatim.openstreetmap.org/search?q=$input&format=json&addressdetails=1'));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      setState(() {
        _suggestions = data.map((item) {
          return Suggestion(item["display_name"], double.parse(item["lat"]),
              double.parse(item["lon"]));
        }).toList();
      });
    } else {
      setState(() {
        _suggestions = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mapController = ref.watch(mapControllerProvider);

    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final latitude = args["latitude"];
    final longitude = args["longitude"];

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
                initialCenter: LatLng(latitude, longitude),
                initialZoom: 15.0,
                interactiveFlags: ~InteractiveFlag.all),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.invelex.socialice',
              ),
              MarkerLayer(markers: [
                Marker(
                    point: suggestion == null
                        ? LatLng(latitude, longitude)
                        : LatLng(suggestion!.latitude, suggestion!.longitude),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40.0,
                    ))
              ])
            ],
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _controller,
                  maxLength: 40,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 17,
                    ),
                    border: InputBorder.none,
                    counter: SizedBox.shrink(),
                    prefixIcon: SvgPicture.asset(
                      'assets/vectors/vector_9_x2.svg',
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxWidth: 12 + 4 + 16.82,
                      maxHeight: 16.82,
                    ),
                    isCollapsed: true,
                    hintText: 'Strasse, 8001 Zurich',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyLightColor,
                    ),
                  ),
                  onChanged: (value) => _fetchSuggestions(value),
                ),
                if (_suggestions.isNotEmpty)
                  Container(
                    height: 300,
                    color: AppColors.whiteColor,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListView.builder(
                      itemCount: _suggestions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_suggestions[index].displayName),
                          onTap: () {
                            final _suggestion = _suggestions[index];

                            _controller.text = _suggestion.displayName;

                            ref.read(mapControllerProvider).move(
                                LatLng(_suggestion.latitude,
                                    _suggestion.longitude),
                                15);

                            setState(() {
                              suggestion = _suggestion;
                              _suggestions = [];
                            });
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          )),
          Positioned(
              bottom: 48,
              left: 16,
              right: 16,
              child: BlackContainerButton(
                  text: "Save",
                  action: () {
                    Navigator.pop(context, suggestion);
                  }))
        ],
      ),
    );
  }
}
