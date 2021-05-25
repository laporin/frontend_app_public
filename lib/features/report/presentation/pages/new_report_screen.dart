import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/features/category/presentation/bloc/category_bloc.dart';

class NewReportScreen extends StatefulWidget {
  @override
  _NewReportScreenState createState() => _NewReportScreenState();
}

class _NewReportScreenState extends State<NewReportScreen> {
  final _formKey = GlobalKey<FormState>();
  final _detail = TextEditingController(text: 'some detail text');
  var _categoryId = 1;
  final _city = TextEditingController(text: 'magelang');
  final _subdistrict = TextEditingController(text: 'ngluwar');
  final _address =
      TextEditingController(text: 'rt 1 rw 2 jalan raya ditengah sawah');
  var _visibility = false;

  String dropdownValue = 'Kemacetan';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryBloc>()..add(GetCategoriesEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Buat Laporan Baru',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi Laporan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _detail,
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      hintText: 'Tulis deskripsi laporan',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon tulis deskripsi laporan';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Kategori',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      if (state is CategoryInitialState) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is CategoryLoadingState) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is CategoriesLoadedState) {
                        final categories = state.categories.data;
                        final categoriesName =
                            categories.map((e) => e.name).toList();
                        // print(categoriesName);
                        return DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward),
                          // iconSize: 24,
                          // elevation: 16,
                          // style: const TextStyle(color: Colors.deepPurple),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.deepPurpleAccent,
                          // ),
                          onChanged: (String? newCategoryName) {
                            final selectedCategory = categories
                                .where((element) =>
                                    element.name == newCategoryName)
                                .first;
                            setState(() {
                              dropdownValue = newCategoryName!;
                              _categoryId = selectedCategory.id;
                            });
                            print(_categoryId);
                          },
                          items: categoriesName.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        );
                      } else if (state is CategoryErrorState) {
                        return Text(state.message);
                      } else {
                        return Text('Something went wrong');
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Kota',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _city,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      hintText: 'Magelang',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon tulis kota';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Kota',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _subdistrict,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      hintText: 'Ngluwar',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon tulis kecamatan';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Alamat Lengkap',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _address,
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      hintText: 'RT RW / Nomor Jalan',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mohon tulis alamat lengkap';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Koordinat',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '10, 10',
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Apakah Anda ingin laporan ini dilihat oleh umum?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: <Widget>[
                      RadioListTile<bool>(
                        title: const Text('Ya'),
                        value: true,
                        groupValue: _visibility,
                        onChanged: (bool? value) {
                          setState(() {
                            _visibility = value ?? false;
                          });
                        },
                      ),
                      RadioListTile<bool>(
                        title: const Text('Tidak'),
                        value: false,
                        groupValue: _visibility,
                        onChanged: (bool? value) {
                          setState(() {
                            _visibility = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Kirim Laporan',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
