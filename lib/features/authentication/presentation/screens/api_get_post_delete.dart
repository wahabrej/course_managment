// import coverter from converter;

// Future<void> getData() async {
//   final url = Uri.parse('https://example.com/api/data');
//   try {
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       print("Data: $data");
//     } else {
//       print("Failed to fetch data. Status Code: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }


// ---

// Future<void> postData(Map<String, dynamic> body) async {
//   final url = Uri.parse('https://example.com/api/data');
//   try {
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(body),
//     );

//     if (response.statusCode == 201) {
//       final data = jsonDecode(response.body);
//       print("Successfully posted data: $data");
//     } else {
//       print("Failed to post data. Status Code: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }


// Future<void> updateData(String id, Map<String, dynamic> body) async {
//   final url = Uri.parse('https://example.com/api/data/$id');
//   try {
//     final response = await http.put(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(body),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       print("Successfully updated data: $data");
//     } else {
//       print("Failed to update data. Status Code: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }


// --

// Future<void> deleteData(String id) async {
//   final url = Uri.parse('https://example.com/api/data/$id');
//   try {
//     final response = await http.delete(url);

//     if (response.statusCode == 200) {
//       print("Successfully deleted data");
//     } else {
//       print("Failed to delete data. Status Code: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Error: $e");
//   }
// }

// -----
// void main() {
//   getData(); // Fetch data
//   postData({'name': 'John', 'age': 30}); // Post data
//   updateData('123', {'name': 'Jane', 'age': 28}); // Update data
//   deleteData('123'); // Delete data
// }


// headers: {
//   'Content-Type': 'application/json',
//   'Authorization': 'Bearer <your_token>',
// }
