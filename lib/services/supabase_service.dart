import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseService _instance = SupabaseService._internal();
  factory SupabaseService() => _instance;
  SupabaseService._internal();

  Future<List<Map<String, dynamic>>> getPedidosEntregues() async {
    try {
      final response = await Supabase.instance.client
          .from('pedidos')
          .select('*')
          .eq('status_transporte', 'entregue');

      if (response.isNotEmpty) {
        return response.cast<Map<String, dynamic>>();
      }
      return [];
    } on PostgrestException catch (e) {
      throw Exception('Erro ao carregar pedidos: ${e.message}');
    } catch (e) {
      throw Exception('Erro inesperado: $e');
    }
  }

  Future<List<Map<String, dynamic>>> getPedidosFiltrados({
    String? entregador,
    String? loja,
    bool? statusPagamento,
  }) async {
    try {
      var query = Supabase.instance.client.from('pedidos').select('*');

      if (entregador != null && entregador.isNotEmpty) {
        query = query.eq('aceito_por_uid', entregador);
      }
      if (loja != null && loja.isNotEmpty) {
        query = query.eq('id_loja', loja);
      }
      if (statusPagamento != null) {
        query = query.eq('status_pagamento', statusPagamento);
      }

      final response = await query;

      if (response.isNotEmpty) {
        return response.cast<Map<String, dynamic>>();
      }
      return [];
    } on PostgrestException catch (e) {
      throw Exception('Erro ao filtrar pedidos: ${e.message}');
    } catch (e) {
      throw Exception('Erro inesperado: $e');
    }
  }
}
