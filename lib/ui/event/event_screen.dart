// import 'package:flutter/material.dart';
// import 'package:hci_project/constant/colors.dart';
// import 'package:hci_project/utils/app_assets.dart';
//
// class CreateEventPage extends StatelessWidget {
//   const CreateEventPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xF0F8FFFA),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: const BackButton(color: Colors.black),
//         title: const Text('Create Event', style: TextStyle(color: primaryColor, fontSize: 20)),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Banner image placeholder
//             Container(
//               height: 180,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               // alignment: Alignment.center,
//               // child: const Text(
//               //   'Book Club',
//               //   style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
//               // ),
//               child: Image.asset(
//                 AppAssets.bookingClub,
//               ),
//             ),
//             const SizedBox(height: 20),
//
//             // Category Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildCategoryButton(Icons.menu_book, "Book Club", true),
//                 _buildCategoryButton(Icons.directions_bike, "Sport", false),
//                 _buildCategoryButton(Icons.cake, "Birthday", false),
//               ],
//             ),
//             const SizedBox(height: 20),
//
//             // Title
//             const Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//             const SizedBox(height: 8),
//             TextField(
//               decoration: _inputDecoration("Event Title", Icons.edit),
//             ),
//             const SizedBox(height: 20),
//
//             // Description
//             const Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//             const SizedBox(height: 8),
//             TextField(
//               maxLines: 4,
//               decoration: _inputDecoration("Event Description", null),
//             ),
//             const SizedBox(height: 20),
//
//             // Date and Time
//             Row(
//               children: [
//                 const Icon(Icons.calendar_today_outlined),
//                 const SizedBox(width: 8),
//                 const Text("Event Date"),
//                 const Spacer(),
//                 TextButton(onPressed: () {},
//
//                     //child: const Text("Choose Date"),
//                 child: const Text("22/11/2024"),
//
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 const Icon(Icons.access_time),
//                 const SizedBox(width: 8),
//                 const Text("Event Time"),
//                 const Spacer(),
//                 TextButton(onPressed: () {}, child:
//            //     const Text("Choose Time"),
//                 const Text("12:22PM"),
//
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//
//             // Location
//             const Text("Location", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//             const SizedBox(height: 8),
//             ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFFEDF3FF),
//                 foregroundColor: primaryColor,
//                 minimumSize: const Size(double.infinity, 60),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                 elevation: 0,
//               ),
//               icon: const Icon(Icons.my_location),
//               label: const Text("Choose Event Location"),
//               onPressed: () {},
//             ),
//             const SizedBox(height: 30),
//
//             // Add Event Button
//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: primaryColor,
//                 minimumSize: const Size(double.infinity, 60),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//               ),
//               child: const Text("Add Event", style: TextStyle(color: Colors.white, fontSize: 18)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Helper widget for category buttons
//   Widget _buildCategoryButton(IconData icon, String label, bool selected) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 4),
//         child: OutlinedButton.icon(
//           onPressed: () {},
//           icon: Icon(icon, color: selected ? Colors.white : Colors.blue),
//           label: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.blue)),
//           style: OutlinedButton.styleFrom(
//             backgroundColor: selected ? primaryColor : Colors.white,
//             side: BorderSide(color: primaryColor),
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//           ),
//         ),
//       ),
//     );
//   }
//
//   InputDecoration _inputDecoration(String hint, IconData? icon) {
//     return InputDecoration(
//       hintText: hint,
//       prefixIcon: icon != null ? Icon(icon) : null,
//       filled: true,
//       fillColor: Colors.white,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: Colors.grey),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hci_project/constant/colors.dart';
import 'package:hci_project/utils/app_assets.dart';

class CreateEventPage extends StatelessWidget {
  const CreateEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF0F8FFFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text('Create Event', style: TextStyle(color: primaryColor, fontSize: 20)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner image
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                AppAssets.bookingClub,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Category Buttons using Wrap
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildCategoryButton(Icons.menu_book, "Book Club", true),
                _buildCategoryButton(Icons.directions_bike, "Sport", false),
                _buildCategoryButton(Icons.cake, "Birthday", false),
              ],
            ),
            const SizedBox(height: 20),

            // Title
            const Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextField(
              decoration: _inputDecoration("Event Title", Icons.edit),
            ),
            const SizedBox(height: 20),

            // Description
            const Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: _inputDecoration("Event Description", null),
            ),
            const SizedBox(height: 20),

            // Date and Time
            Row(
              children: [
                const Icon(Icons.calendar_today_outlined),
                const SizedBox(width: 8),
                const Text("Event Date"),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("22/11/2024"),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.access_time),
                const SizedBox(width: 8),
                const Text("Event Time"),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("12:22PM"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Location
            const Text("Location", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),

            // ListTile(
            //
            //   leading: Container(
            //     width: 40,
            //       height: 40,
            //       decoration: BoxDecoration(
            //         color: primaryColor,
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: Icon(Icons.my_location,color: Colors.white,size: 30),), // Replace with your desired icon
            //   title: Text('Choose Event Location',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: primaryColor)),
            //   trailing: IconButton(
            //     icon: Icon(Icons.arrow_forward_ios, color: primaryColor),
            //     onPressed: () {
            //       // Handle next button action
            //       print('Next button pressed');
            //     },
            //   ),
            //   // Add other properties like subtitle, trailing, onTap, etc., as needed
            // ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the ListTile
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: primaryColor, // Contrast background for icon
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.my_location, color: Colors.white, size: 24),
                ),
                title: const Text(
                  'Choose Event Location',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color:primaryColor),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios, color:primaryColor, size: 16),
                  onPressed: () {
                    print('Next button pressed');
                  },
                ),
                onTap: () {
                  // Optional: you can handle tap here too
                },
              ),
            ),

            const SizedBox(height: 30),

            // Add Event Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text("Add Event", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  // Updated category button builder with fixed width
  Widget _buildCategoryButton(IconData icon, String label, bool selected) {
    return SizedBox(
      width: 110, // Fit 3 buttons in one row
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: selected ? Colors.white : Colors.blue),
        label: Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: selected ? Colors.white : Colors.blue),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: selected ? primaryColor : Colors.white,
          side: BorderSide(color: primaryColor),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        ),
      ),
    );
  }

  // Input decoration
  InputDecoration _inputDecoration(String hint, IconData? icon) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: icon != null ? Icon(icon) : null,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    );
  }
}
