import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prathinidhi_rider/presentation/ui/screens/application_submitted_screen.dart';
import 'package:prathinidhi_rider/presentation/ui/utility/app_color.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/header.dart';
import 'package:prathinidhi_rider/presentation/ui/widgets/textbutton.dart'; // Import DateFormat for date formatting

class ApplicationForm extends StatefulWidget {
  @override
  _ApplicationFormState createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime? _birthday; // Store the selected birthday as DateTime
  String? _gender;
  String? _location;
  File? _imageFile;
  File? _nidFrontFile;
  File? _nidBackFile;
  File? _nomineeImageFile;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form fields are valid, proceed to submit
      print('Submitting Application...');
      // Implement your submission logic here
    }
  }

  Future<void> _pickFile(String field) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png'],
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      int fileSizeInBytes = file.lengthSync();
      double fileSizeInMb = fileSizeInBytes / (1024 * 1024);

      if (fileSizeInMb > 10) {
        // File size exceeds 10 MB
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('File size exceeds 10 MB. Please select a smaller file.'),
          ),
        );
      } else {
        setState(() {
          switch (field) {
            case 'image':
              _imageFile = file;
              break;
            case 'nidFront':
              _nidFrontFile = file;
              break;
            case 'nidBack':
              _nidBackFile = file;
              break;
            case 'nomineeImage':
              _nomineeImageFile = file;
              break;
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text("Step 1 : Please fill up the form carefully",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
              SizedBox(height: 15,),
              Text("Your Birthday",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  errorText: _birthday == null ? 'Please enter your birthday' : null,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ),
                readOnly: true, // Make the field read-only to prevent direct text input
                onTap: () {
                  _selectDate(context); // Trigger date picker when field is tapped
                },
                controller: _birthday == null
                    ? TextEditingController(text: '')
                    : TextEditingController(text: DateFormat('yyyy-MM-dd').format(_birthday!)),
              ),
              SizedBox(height: 20.0),
              Text('Your Gender',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              Row(
                children: [
                  Radio<String>(
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                  Text('Male'),
                  Radio<String>(
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 20.0),
              Text("Your Present Location",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              TextFormField(
                decoration: InputDecoration(
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your location';
                  }
                  return null;
                },
                onChanged: (value) {
                  _location = value;
                },
              ),
              SizedBox(height: 5,),
              Text("Fill up the address with sequence"),
              SizedBox(height: 20.0),
              Text("Upload your Image",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              ElevatedButton(
                onPressed: () => _pickFile('image'),
                child: Column(
                  children: [
                    Image.asset("assets/upload.png",height: 30,width: 20,color: Colors.black,),
                    Text('Choose your file (.Png, .jpg File size max 10 mb)'),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text("Your NID Number",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              TextField(
                decoration: InputDecoration(

                ),
              ),
              Text("National ID Card ( Front Part )",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              ElevatedButton(
                onPressed: () => _pickFile('nidFront'),
                child: Column(
                  children: [
                    Image.asset("assets/upload.png",height: 30,width: 20,color: Colors.black,),
                    Text('Choose your file (.Png, .jpg File size max 10 mb)'),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text("National ID Card ( Back Part )",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              ElevatedButton(
                onPressed: () => _pickFile('nidBack'),
                child: Column(
                  children: [
                    Image.asset("assets/upload.png",height: 30,width: 20,color: Colors.black,),
                    Text('Choose your file (.Png, .jpg File size max 10 mb)'),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text("Your Nominee Image ( Father/Mother/Husband/ Wife)",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15)),
              ElevatedButton(
                onPressed: () => _pickFile('nomineeImage'),
                child: Column(
                  children: [
                    Image.asset("assets/upload.png",height: 30,width: 20,color: Colors.black,),
                    Text('Choose your file (.Png, .jpg File size max 10 mb)'),
                  ],
                ),
              ),
              SizedBox(height: 32.0),
              CustomTextButton(onPressed: () {
                Get.to(ApplicationSubmittedScreen());
              }, text: ' Submit your Application', color: AppColors.primaryColor, txtcolor: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Set initial date to today's date
      firstDate: DateTime(1900), // Set earliest selectable date
      lastDate: DateTime.now(), // Set latest selectable date (today)
    );

    if (pickedDate != null && pickedDate != _birthday) {
      setState(() {
        _birthday = pickedDate;
      });
    }
  }
}
