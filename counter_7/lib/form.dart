import 'main.dart';
import 'package:flutter/material.dart';
import 'item.dart';
import 'drawer.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});
  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    int _nominal = 0;
    String? pilihan;
    List<String> listKelasPBP = ['Pemasukan', 'Pengeluaran'];
    TextEditingController _controller = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    DateTime date = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),

        drawer: appDrawer(context),


        body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Contoh: Kopi",
                      labelText: "Judul",
                    //   icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama lengkap tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _controller2,
                    decoration: InputDecoration(
                      hintText: "Contoh: 10000",
                      labelText: "Nominal",
                    //   icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = value! as int;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value! as int;
                      });
                    },
                    validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Nominal tidak boleh kosong!';
                        }
                        _nominal = int.parse(value);
                        return null;
                      },
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.class_),
                  trailing: DropdownButton(
                    value: pilihan,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    hint: const Text('Pilih Jenis'),
                    items: listKelasPBP.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        pilihan = newValue!;
                      });
                    },
                  ),
                ),

                // referensi: https://www.youtube.com/watch?v=yMZpwXQcP2E
                Text(
                  
                  'Hari ini: ${date.year}/${date.month}/${date.day}',
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: Text('Pilih Tanggal'),
                  onPressed: () async{
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2200),
                    );

                    if (newDate == null) return;

                    setState(() => date = newDate);
                  },
                ),

                Text(""),
                Text(""),
                Text(""),

                TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {

                        if (_formKey.currentState!.validate()) {
                            Item.tambahItem( judul: _judul, nominal:_nominal, jenis: pilihan, date:date);
                            _controller.clear();
                            _controller2.clear();
                        }
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                    
                    ),
              ],
            ),
          ),
        ),
      ),
    );
}
}
