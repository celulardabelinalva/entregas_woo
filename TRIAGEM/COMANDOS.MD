# 📚 Rascunho: Comandos Flutter e Referências

Este arquivo contém comandos úteis, dicas e referências para o desenvolvimento do app `entregas_woocommerce`.

---

## 🚀 Comandos Flutter (Terminal)

Execute dentro da pasta do projeto: `C:\dev\entregas_woocommerce`

| Comando | Descrição |
|--------|-----------|
| `flutter pub get` | Instala todas as dependências do `pubspec.yaml` |
| `flutter pub upgrade` | Atualiza pacotes para as versões mais recentes |
| `flutter pub add <pacote>` | Adiciona um pacote (ex: `flutter pub add supabase_flutter`) |
| `flutter run` | Roda o app (pergunta qual dispositivo usar) |
| `flutter run -d chrome` | Roda o app diretamente no Chrome |
| `flutter run -d windows` | Roda no Windows |
| `flutter run -d edge` | Roda no Edge |
| `flutter build web` | Gera versão web (`build/web/`) |
| `flutter build apk` | Gera APK para Android |
| `flutter build appbundle` | Gera `.aab` para Play Store |
| `flutter build windows` | Gera app para Windows |
| `flutter clean` | Limpa a pasta `build` (útil para resolver erros) |
| `flutter doctor` | Verifica se tudo está configurado corretamente |
| `flutter pub outdated` | Mostra pacotes com versões mais novas disponíveis |
| `flutter analyze` | Analisa o código em busca de erros e avisos |
| `flutter emulators` | Lista emuladores Android disponíveis |
| `flutter emulators --launch <nome>` | Inicia um emulador (ex: `Pixel_5_API_34`) |

> 💡 Durante o `flutter run`, use:
> - `R` → Hot restart
> - `r` → Hot reload
> - `q` → Sair
> - `c` → Limpar tela
> - `h` → Ver todos os comandos

---

## 🧩 Estrutura de Pastas do Projeto

lib/
├── main.dart # Ponto de entrada do app
├── models/ # Classes de dados (ex: Pedido.dart)
├── services/ # Lógica de negócio (ex: SupabaseService.dart)
├── screens/ # Telas do app (ex: pedidos_entregues.dart)
└── widgets/ # Componentes reutilizáveis


---

## 📁 Assets e Fontes

### Fontes usadas
- `assets/fonts/Roboto-Regular.ttf`
- `assets/fonts/Roboto-Italic.ttf`

### Como usar no `pubspec.yaml`
```yaml
flutter:
  assets:
    - assets/fonts/Roboto-Regular.ttf
    - assets/fonts/Roboto-Italic.ttf

    
