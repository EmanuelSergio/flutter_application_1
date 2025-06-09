# 📱 Aplicativo de Delivery de Comida em Flutter

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-2.0%2B-blue?logo=flutter" />
  <img src="https://img.shields.io/badge/Dart-2.12%2B-blue?logo=dart" />
  <img src="https://img.shields.io/badge/Gerenciamento%20de%20Estado-Provider-green" />
  <img src="https://img.shields.io/badge/API-Mock-red" />
</p>

## 🧾 Visão Geral

Este é um aplicativo de delivery de comida desenvolvido em **Flutter**, com uma interface moderna e funcionalidades essenciais para pedidos online. A aplicação permite que os usuários:

- Naveguem por diferentes opções de refeições  
- Adicionem itens ao carrinho  
- Realizem pedidos  
- Avaliem sua experiência  
- Se comuniquem com o suporte via chat  

Projeto focado em **design responsivo**, **boas práticas de arquitetura** e **componentização de widgets**.

---

## 🗂 Estrutura do Projeto

```bash
lib/
├── main.dart                  # Ponto de entrada da aplicação
├── splash_screen.dart         # Tela inicial (splash)
├── Data/
│   ├── Models/
│   │   └── item_model.dart    # Modelo dos itens de comida
│   └── Services/
│       └── api_service.dart   # Serviço para comunicação com API
├── widgets/
│   ├── HeaderApp.dart         # Cabeçalho personalizado
│   ├── NavigationBarApp.dart  # Barra de navegação inferior
│   ├── MealMenu.dart          # Listagem de comidas
│   ├── layout/
│   │   └── CustomDrawer.dart  # Menu lateral
│   ├── Pages/
│   │   ├── chat.dart          # Tela de chat com suporte
│   │   ├── finish_order.dart  # Confirmação de pedido
│   │   └── food_detail_order.dart # Detalhes da refeição e pedido
│   └── custom/
│       ├── custom_carousel.dart
│       ├── custom_card_mealMenu.dart
│       └── custom_total_account.dart
```

---

## ✅ Funcionalidades

### 🎨 Interface do Usuário

- Design moderno com Material Design  
- Menu lateral e navegação inferior  
- Tela de splash com identidade visual  

### 🍔 Catálogo de Comidas

- Listagem por categorias  
- Detalhes com descrição, preço e avaliação  
- Carrossel de destaques personalizado  

### 🛒 Carrinho e Pedidos

- Adição de itens com controle de quantidade  
- Resumo e totalização do pedido  
- Cálculo de frete e aplicação de descontos  
- Finalização do pedido  

### ⭐ Pós-venda

- Avaliação com estrelas  
- Envio de feedback  
- Histórico de pedidos e rastreamento  

### 💬 Suporte ao Cliente

- Chat interno para atendimento  
- Exibição de mensagens anteriores  

---

## 🔌 Integração com Backend

A aplicação utiliza uma **API simulada (mock)** com endpoints para:

- Obter lista de refeições  
- Gerenciar carrinho  
- Processar pedidos  
- Autenticação de usuários (em desenvolvimento)

---

## 🚀 Como Executar o Projeto

### Pré-requisitos

- Flutter SDK (2.0 ou superior)  
- Dart SDK  
- Android Studio ou VS Code com plugin Flutter  
- Node.js (para rodar API mock)

### Passo a Passo

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd flutter_application_1
```

2. Instale as dependências:
```bash
flutter pub get
```

3. (Opcional) Inicie a API mock:
```bash
cd api
npm install
npm start
```

4. Execute o app:
```bash
flutter run
```

---

## 🛠 Tecnologias & Arquitetura

- **Flutter + Dart**  
- **Arquitetura baseada em serviços**  
- **Provider** para gerenciamento de estado  
- **Mock API** usando JSON Server  
- **Widgets customizados** e reutilizáveis  
- **Design responsivo** para múltiplas resoluções  

---

## 🌱 Melhorias Futuras

- Autenticação e gerenciamento de perfis  
- Integração com meios de pagamento  
- Rastreamento em tempo real  
- Notificações push  
- Cadastro de endereços  
- Sistema de favoritos e recomendações personalizadas  

---

## 👨‍💻 Sobre o Desenvolvedor

Este projeto foi desenvolvido com foco em aprendizado e aplicação de boas práticas no desenvolvimento mobile com Flutter.

Sinta-se à vontade para entrar em contato!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Perfil-blue?logo=linkedin)](https://www.linkedin.com/in/seu-usuario)
