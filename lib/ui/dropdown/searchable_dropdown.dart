import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SearchableDropdown extends StatelessWidget {
  const SearchableDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 20, right: 8.0),
        child: Container(
          child: DropdownSearch<String>(
            mode: Mode.BOTTOM_SHEET,
            showSelectedItems: true,
            showSearchBox: true,
            showClearButton: true,
            items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
            //label: "Menu mode",
            //hint: "country in menu mode",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
            selectedItem: "Brazil",
            clearButtonSplashRadius: 20,
            popupSafeArea: PopupSafeAreaProps(top: true, bottom: true),
            scrollbarProps: ScrollbarProps(
              isAlwaysShown: true,
              thickness: 7,
            ),
            dropdownSearchDecoration: InputDecoration(
              hintText: "Select a country",
              labelText: "Menu mode multiSelection*",
              contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
