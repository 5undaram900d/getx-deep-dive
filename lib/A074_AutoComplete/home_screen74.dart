
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A074_AutoComplete/country74.dart';
import 'package:getx_tut/A074_AutoComplete/my_controller74.dart';

class HomeScreen74 extends StatelessWidget {
  MyController74 controller = MyController74();

  HomeScreen74({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('AutoComplete'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Autocomplete<Country74>(
            optionsBuilder: ((textEditingValue) {
              return controller.countryNames.where((Country74 country) => country.name.toLowerCase().startsWith(textEditingValue.text.toLowerCase())).toList();
            }),
            displayStringForOption: (Country74 country)=> country.name,
            fieldViewBuilder: (BuildContext context, TextEditingController fieldTextEditingController, FocusNode fieldFocusNode, VoidCallback onFieldSubmitted){
              return TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Select Country",
                ),
                controller: fieldTextEditingController,
                focusNode: fieldFocusNode,
                style: const TextStyle(fontWeight: FontWeight.bold),
              );
            },
            onSelected: (Country74 country)=> debugPrint("Selected: ${country.name}"),
            optionsViewBuilder: (BuildContext context, AutocompleteOnSelected<Country74> onSelected, Iterable<Country74> country){
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  child: Container(
                    width: 330,
                    color: Colors.deepPurpleAccent,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: country.length,
                      itemBuilder: (context, index){
                        final Country74 option = country.elementAt(index);
                        return GestureDetector(
                          onTap: ()=> onSelected(option),
                          child: ListTile(
                            title: Text(option.name, style: const TextStyle(color: Colors.white),),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
