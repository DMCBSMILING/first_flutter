import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/data_service.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/instruments_screen.dart';
import 'screens/requests_screen.dart';
import 'screens/scan_barcode_screen.dart';
import 'screens/maintenance_screen.dart';

void main() {
  runApp(const MedLabApp());
}

class MedLabApp extends StatelessWidget {
  const MedLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataService>(
      create: (_) => DataService()..initMockData(),
      child: MaterialApp(
        title: 'MedLab Inventory',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/dashboard': (context) => const DashboardScreen(),
          '/instruments': (context) => const InstrumentsScreen(),
          '/requests': (context) => const RequestsScreen(),
          '/scan': (context) => const ScanBarcodeScreen(),
          '/maintenance': (context) => const MaintenanceScreen(), // NEW
        },
      ),
    );
  }
}