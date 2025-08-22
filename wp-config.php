<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do banco de dados
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do banco de dados - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'wp_alura_003' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'nhS QLC;aMBW[=QM1Pj,=7j}eyA1/MMHS=puprM}/wg!9$?8gZNU+Cw>b/k0[F0$' );
define( 'SECURE_AUTH_KEY',  'tnhlXAAo:[TlEpSH]$fn&rRN0Xv|X*@.2olEinx/OAdtJyIW5TsgWhP>)5/V_:+4' );
define( 'LOGGED_IN_KEY',    '=&f~g&6+$SpH3N3/KgXc|PAO/`$KuybZ~k U=p?II+hZoMqX:Wub!`9Y(4q]c`]a' );
define( 'NONCE_KEY',        '`p?zpq),F%k6=p+-x(]_,|fi#_Dn~<IoV.Lf]L{;73N(Y[Z(,?q(-Mz=S1&V$GUS' );
define( 'AUTH_SALT',        ' kJd!G2H00?}<@@xr2g[lK~?v}:]d?kh>-hy+XY`1pt^?h4my<[]Z2XfBQ]{6<bR' );
define( 'SECURE_AUTH_SALT', ';_ZMB6XKBWf4 XiBCr>iaAb<$HFYeouW3})07H;<S3d8W% ``aM*c`S8f@t@uu;@' );
define( 'LOGGED_IN_SALT',   'qc)#4:(Z=v(92n>cg=o=^!3^1&j.KFN~d)vx.f,sBJ,wpD29o[>^&>4*-}<,kIR|' );
define( 'NONCE_SALT',       'f%p24^YYOXVGJZkBmKXBP8cEb*aCUkWtG36=u]?<C /_y.h/AJ(;ck&(Iws_|@@Y' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'jvwp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
