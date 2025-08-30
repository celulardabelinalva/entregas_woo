🔌 Supabase – Funções SQL Importantes

1. Função: f_botao_aceitar_pedido()
   
   CREATE OR REPLACE FUNCTION f_botao_aceitar_pedido()
RETURNS TRIGGER AS $$
DECLARE
  v_uid uuid;
  v_nome text;
  v_email text;
  v_telefone text;
BEGIN
  IF NEW.status_transporte = 'aceito' THEN
    v_uid := (current_setting('request.jwt.claims', true)::json->>'sub')::uuid;
    NEW.aceito_por_uid := v_uid;

    SELECT COALESCE(u.nome_completo, u.nome_usuario, 'Nome não especificado')
    INTO v_nome FROM usuarios u WHERE u.uid = v_uid;

    SELECT COALESCE(u.email, 'Email não especificado')
    INTO v_email FROM usuarios u WHERE u.uid = v_uid;

    SELECT COALESCE(u.telefone, 'Telefone não especificado')
    INTO v_telefone FROM usuarios u WHERE u.uid = v_uid;

    NEW.aceito_por_nome := v_nome;
    NEW.aceito_por_email := v_email;
    NEW.aceito_por_telefone := v_telefone;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

2. Função: f_botao_reverter_pedido()
   CREATE OR REPLACE FUNCTION f_botao_reverter_pedido()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status_transporte = 'revertido' THEN
    NEW.aceito_por_uid := NULL;
    NEW.aceito_por_nome := NULL;
    NEW.aceito_por_email := NULL;
    NEW.aceito_por_telefone := NULL;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;