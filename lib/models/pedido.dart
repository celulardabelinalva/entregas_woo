// ==============================================================================
// 1. IMPORTAÇÕES
// ==============================================================================

// ==============================================================================
// 1. MODELO DE DADOS: PEDIDO
// ==============================================================================

/// Representa um pedido do sistema de entregas
///
/// Mapeia a tabela 'pedidos' do Supabase
/// Usado para carregar, exibir e atualizar pedidos
class Pedido {
  // -------------------------------------------------------------------------
  // 1.1 PROPRIEDADES DO PEDIDO
  // -------------------------------------------------------------------------
  final int id;
  final String idLoja;
  final int idWoo;
  final String idLojaWoo;
  final String lojaNome;
  final String statusTransporte;
  final String? aceitoPorNome;
  final String? aceitoPorEmail;
  final String? aceitoPorTelefone;
  final String? nomeCliente;
  final String? emailCliente;
  final String? telefoneCliente;
  final String? enderecoEntrega;
  final String? produto;
  final String? formaPagamento;
  final double total;
  final String? observacaoPedido;
  final String? lojaTelefone;
  final DateTime? data;
  final DateTime? dataPagamento;
  final bool statusPagamento;
  final double? fretePago;
  final String? lojaLogo;

  // -------------------------------------------------------------------------
  // 1.2 CONSTRUTOR
  // -------------------------------------------------------------------------
  Pedido({
    required this.id,
    required this.idLoja,
    required this.idWoo,
    required this.idLojaWoo,
    required this.lojaNome,
    required this.statusTransporte,
    this.aceitoPorNome,
    this.aceitoPorEmail,
    this.aceitoPorTelefone,
    this.nomeCliente,
    this.emailCliente,
    this.telefoneCliente,
    this.enderecoEntrega,
    this.produto,
    this.formaPagamento,
    this.observacaoPedido,
    this.lojaTelefone,
    this.data,
    required this.total,
    this.dataPagamento,
    required this.statusPagamento,
    this.fretePago,
    this.lojaLogo, // ✅ Adicionado
  });

  // -------------------------------------------------------------------------
  // 1.3 FACTORY: CONVERTER JSON → PEDIDO
  // -------------------------------------------------------------------------
  factory Pedido.fromJson(Map<String, dynamic> json) {
    return Pedido(
      id: json['id'] as int,
      idLoja: json['id_loja'] as String,
      idWoo: json['id_woo'] as int,
      idLojaWoo: json['id_loja_woo'] as String,
      lojaNome: json['loja_nome'] as String,
      statusTransporte: json['status_transporte'] as String,
      aceitoPorNome: json['aceito_por_nome'] as String?,
      aceitoPorEmail: json['aceito_por_email'] as String?,
      aceitoPorTelefone: json['aceito_por_telefone'] as String?,
      nomeCliente: json['nome_cliente'] as String?,
      emailCliente: json['email_cliente'] as String?,
      telefoneCliente: json['telefone_cliente'] as String?,
      enderecoEntrega: json['endereco_entrega'] as String?,
      produto: json['produto'] as String?,
      formaPagamento: json['forma_pagamento'] as String?,
      observacaoPedido: json['observacao_pedido'] as String?,
      lojaTelefone: json['loja_telefone'] as String?,
      data: json['data'] != null
          ? DateTime.parse(json['data'] as String)
          : null,
      total: (json['total'] as num).toDouble(),
      dataPagamento: json['data_pagamento'] != null
          ? DateTime.parse(
              '${(json['data_pagamento'] as String).split('T').first}T00:00:00',
            )
          : null,
      statusPagamento: json['status_pagamento'] == true,
      fretePago: (json['frete_pago'] as num?)?.toDouble(),
      lojaLogo: json['loja_logo'] as String?,
    );
  }
}
