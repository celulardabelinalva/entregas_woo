import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/pedidos_entregues.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://czzidhzzpqegfvvmdgno.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN6emlkaHp6cHFlZ2Z2dm1kZ25vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI5NTIwMDMsImV4cCI6MjA2ODUyODAwM30.zK2iFp-b4e5vghpHgWGuOk0LooujlyU7kVm4sbM85m0', // 🔁 Substitua pela sua chave anônima do Supabase
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Entregas WooCommerce',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PedidosEntreguesScreen(),
    );
  }
}
