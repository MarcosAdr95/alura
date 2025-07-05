# ToDo

- Breadcrumb
- Configurar módulo de noticias na home
- configurar footer
- configurar pagina dos posts
- [Layout's](https://www.figma.com/design/akTTLK7znjqgUXr9k8eD7P/Identidade-Visual-%7C-Cookin-UP--Community-?node-id=0-1&p=f&t=QIGXEAlnhkU45jkn-0)
- configurar envio de newsletter + criacao de newsletter
- configurar api de tradução de conteudos (plugin loco translate)
- criar um robo que preenche categorias, noticias, receitas, ...
  - https://developer.wordpress.org/rest-api/using-the-rest-api/authentication/

---

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

- Baixar o repositório dentro da área de projetos do seu apache
- Adicionar no host local o valor `127.0.0.1 alura.test`
  - Windows: `C:\Windows\System32\drivers\etc\hosts`
  - Linux: `/etc/hosts`
- No apache configurar o Virtual Host liberando `alura.test` na porta 80 e 443
- No arquivo `wp-config.php` localizado na raiz do repositório altera as credenciais de acesso ao mysql de acordo com sua instalação local (para DB_NAME definri como `wp_alura_001`)
- Inicie ou reinicie seu apache + mysql
- No mysql criar a tabela `wp_alura_001`
- Em seguida importar o dump do mysql, localizado na raiz do repositório `./dump/wp_alura_001.sql`
- Acessar a url `https://alura.test/` e `https://alura.test/wp-admin` no navegador
