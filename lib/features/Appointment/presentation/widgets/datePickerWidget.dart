import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';



class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  DatePickerExampleState createState() => DatePickerExampleState();
}

class DatePickerExampleState extends State<DatePickerExample> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xFFFCD522), // Custom color
            colorScheme: const ColorScheme.light(primary: Color(0xFFFCD522)),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    String formattedDate = DateFormat('MMM dd, yyyy').format(selectedDate);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              color: Colors.blue,
              child: Column(
                children: [
                  TextButton(
                      onPressed: () => _selectDate(context),
                      child: const Text('Select Date')),
                  SizedBox(
                    height: 10.h,
                  ),
                  // Displaying the formatted date
                  Text(
                    formattedDate,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
