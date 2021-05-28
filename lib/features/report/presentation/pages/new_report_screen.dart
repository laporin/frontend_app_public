import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:frontend_app_public/features/category/presentation/bloc/category_bloc.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/presentation/bloc/report_bloc.dart';
import 'package:frontend_app_public/services/geolocation_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

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
  Position? position;

  String dropdownValue = 'Kemacetan';

  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    _getThingsOnStartup().then((value) {
      print('Async done');
    });
    super.initState();
  }

  Future _getThingsOnStartup() async {
    // await Geolocator.requestPermission();
    final currentPosition = await determinePosition();
    setState(() {
      position = currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryBloc>(
      create: (BuildContext context) =>
          getIt<CategoryBloc>()..add(GetCategoriesEvent()),
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
            child: BlocProvider(
              create: (context) => getIt<ReportBloc>(),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gambar',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image:
                              NetworkImage('https://placekitten.com/200/300'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(Icons.close),
                          color: Colors.red,
                          onPressed: () {
                            print('hapus gambar');
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: _image == null
                          ? Text('No image selected.')
                          : Image.file(_image!),
                    ),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          icon: Icon(Icons.photo_library_sharp),
                          onPressed: getImageFromGallery,
                          label: Text('Pilih dari galeri'),
                        ),
                        SizedBox(width: 8),
                        ElevatedButton.icon(
                          icon: Icon(Icons.add_a_photo),
                          onPressed: getImage,
                          label: Text('Ambil gambar'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
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
                          return DropdownButton<String>(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            onChanged: (String? newCategoryName) {
                              final selectedCategory = categories
                                  .where((element) =>
                                      element.name == newCategoryName)
                                  .first;
                              setState(() {
                                dropdownValue = newCategoryName!;
                                _categoryId = selectedCategory.id;
                              });
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
                      "${position?.latitude ?? 0}, ${position?.longitude ?? 0}",
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
                          contentPadding: EdgeInsets.all(0),
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
                          contentPadding: EdgeInsets.all(0),
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
                          final reportData = CreateReportRequestModel(
                            detail: _detail.text,
                            address: _detail.text,
                            categoryId: _categoryId,
                            city: _city.text,
                            subdistrict: _subdistrict.text,
                            latitude: 10.10,
                            longitude: 10.10,
                            private: _visibility,
                          );
                          BlocProvider.of<ReportBloc>(context).add(
                            CreateReportEvent(data: reportData),
                          );
                          AutoRouter.of(context).navigate(HomeScreenRoute());
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Sukses membuat laporan'),
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
      ),
    );
  }
}
