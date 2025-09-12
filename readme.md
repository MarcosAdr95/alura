# Cookin'UP

Cookin'UP é um site de receitas que tem como objetivo levar as pessoas uma forma simples e prática de cozinhar com dicas, notícias e receitas simples e saborosas.

Construído com base na plataforma Wordpress + Guttenberg e conteúdos do parceiro "Tudo Gostoso"

![](https://alura.test/wp-content/uploads/2025/06/Screenshot-2025-06-18-215503.png)

---

## Pré-requisitos

- ![Static Badge](https://img.shields.io/badge/wordpress-v6.8.1-blue)
- ![Static Badge](https://img.shields.io/badge/php-v8.0.30-blue)
- ![Static Badge](https://img.shields.io/badge/apache-v2.4.58-blue)
- ![Static Badge](https://img.shields.io/badge/mysql-v8.0.30-blue)

---

## Instalação e execução

### Ambiente XAMPP

- Adicionar a config no arquivo de host da máquina `127.0.0.1 www.cookinup.com.br`
- Baixar o repositório do [GitHub](git@github.com:MarcosAdr95/alura.git)
- No apache configurar o Virtual Host liberando `www.cookinup.com.br` na porta 80 e 443
  - Ao configurar o httpd-vhosts.config no bloco 443 habilitar o ssl e adicionar o certificado ssl presente na pasta "ssl"
  - No httpd-vhosts.config apontar o projeto para o respositório baixado
- No mysql criar a tabela **cookin-up** `caso seja ambiente local`
  - Em seguida importar o arquivo `cookin_up.sql` localizado na raiz do repositório
- No arquivo `wp-config.php` localizado na raiz do repositório altera as credenciais de acesso ao mysql de acordo com sua instalação local/produção
- Inicie seu apache + mysql
- Acessar a url `https://www.cookinup.com.br` e `https://www.cookinup.com.br/wp-admin` no navegador

### Ambiente Docker

- ???
