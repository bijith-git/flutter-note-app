import 'package:flutter/material.dart';
import 'package:noteapp_flutter/constants/constants.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  @override
  Widget build(BuildContext context) {
    var texttheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Note",
          style: texttheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.check))],
      ),
      body: Padding(
        padding: defualtPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Title",
              style: texttheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: textDecoration.copyWith(
                  hintText: "Title",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintStyle: texttheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Description",
              style: texttheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.multiline,
                decoration: textDecoration.copyWith(
                  hintText: "Title",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintStyle: texttheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                expands: true, minLines: null, maxLines: null,
                // maxLines: 10,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon((Icons.edit_note)), label: "edit"),
            BottomNavigationBarItem(
                icon: Icon((Icons.format_align_center_outlined)),
                label: "Format"),
            BottomNavigationBarItem(
                icon: Icon((Icons.browse_gallery)), label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon((Icons.checklist_outlined)), label: "Check list"),
          ]),
    );
  }
}
