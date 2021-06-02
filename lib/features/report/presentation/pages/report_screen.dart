import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:frontend_app_public/core/helper/censor.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';
import 'package:frontend_app_public/features/report/presentation/report_bloc/report_bloc.dart';

class ReportScreen extends StatefulWidget {
  final int id;

  const ReportScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ReportBloc>(context)..add(GetReportEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Laporan',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: [
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if (state is AuthenticatedState) {
                return Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Fitur segera datang!'),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () async {
                        final choice = await showDialog<bool>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Hapus laporan'),
                            content: const Text(
                                'Apakah Anda yakin untuk menghapus laporan ini?'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Tidak'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Ya'),
                              ),
                            ],
                          ),
                        );

                        if (choice == true) {
                          setState(() {
                            BlocProvider.of<ReportBloc>(context)
                              ..add(
                                DeleteReportEvent(id: widget.id),
                              );
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Menghapus laporan...'),
                            ),
                          );
                          AutoRouter.of(context).navigate(HomeScreenRoute());
                        }
                      },
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: BlocBuilder<ReportBloc, ReportState>(
            builder: (context, state) {
              if (state is ReportLoadedState) {
                final ReportDataModel report = state.data.data;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (report.images.length > 0)
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 250,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                        ),
                        items: report.images.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(image.url),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // child: Center(
                                //   child: Text(
                                //     'text ${image.url}',
                                //     style: TextStyle(fontSize: 16),
                                //   ),
                                // ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    // Text(report.images.first.url),

                    SizedBox(height: 15),
                    Text(
                      'Nomor Serial Laporan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(report.serial),
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
                    Text(report.detail),
                    SizedBox(height: 15),
                    Text(
                      'Oleh',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(censorUsername(report.user.username)),
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
                    Text(report.category.name),
                    SizedBox(height: 15),
                    Text(
                      'Kecamatan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(report.subdistrict),
                    SizedBox(height: 15),
                    Text(
                      'Kabupaten / Kota',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(report.city),
                    SizedBox(height: 15),
                    Text(
                      'Alamat',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(report.address),
                    SizedBox(height: 15),
                    Text(
                      'Peta',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Segera datang.'),
                  ],
                );
              } else if (state is ReportLoadingState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Text('Something went wrong');
              }
            },
          ),
        ),
      ),
    );
  }
}
