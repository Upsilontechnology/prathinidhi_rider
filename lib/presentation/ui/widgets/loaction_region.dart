import 'package:flutter/material.dart';

class RegionSearchLocation extends StatefulWidget {
  @override
  _RegionSearchLocationState createState() => _RegionSearchLocationState();
}

class _RegionSearchLocationState extends State<RegionSearchLocation> {
  TextEditingController _locationController = TextEditingController();
  String _selectedLocation = ""; // Variable to hold the selected location
  List<String> _locations = [
    'Dhaka',
    'Chittagong',
    'Khulna',
    'Rajshahi',
    'Sylhet',
    'Barisal',
    'Rangpur',
    'Comilla',
    'Cox’s Bazar',
    'Mymensingh'
  ];

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.0),
        TextFormField(
          controller: _locationController,
          decoration: InputDecoration(
            labelText: 'Choose your region for delivery',
            border: OutlineInputBorder(),
            //prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(Icons.arrow_drop_down),
              onPressed: () {
                _showLocationDialog(context);
              },
            ),
          ),
          readOnly: true, // To prevent manual text input
          onTap: () {
            _showLocationDialog(context);
          },
        ),
      ],
    );
  }

  void _showLocationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Choose your region'),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.clear),
              )
            ],
          ),
          contentPadding: EdgeInsets.all(16.0),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.9, // Set custom width
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: _locations.map((location) {
                  return Column(
                    children: [
                      RadioListTile<String>(
                        title: Text(location),
                        value: location,
                        groupValue: _selectedLocation,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLocation = value!;
                            _locationController.text = value; // Update text field
                          });
                          Navigator.pop(context); // Close dialog after selection
                        },
                      ),
                      Divider(
                        thickness: 1,
                        endIndent: 25,
                        indent: 25,
                      ), // Divider below each location
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
