-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 10 Apr 2013 pada 14.07
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `pongo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_banners`
--

CREATE TABLE IF NOT EXISTS `pongo_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_blogs`
--

CREATE TABLE IF NOT EXISTS `pongo_blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `role_level` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `datetime_on` datetime NOT NULL,
  `datetime_off` datetime NOT NULL,
  `preview` text NOT NULL,
  `text` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyw` text,
  `descr` text,
  `zone` varchar(5) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `pongo_blogs`
--

INSERT INTO `pongo_blogs` (`id`, `role_id`, `role_level`, `author_id`, `slug`, `name`, `datetime_on`, `datetime_off`, `preview`, `text`, `title`, `keyw`, `descr`, `zone`, `lang`, `is_valid`, `created_at`, `updated_at`) VALUES
(1, 1, 50, 1, '/this-is-my-first-post', 'this is my first post', '2012-05-15 12:25:00', '2014-05-15 12:25:00', '<p>\n	Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod.</p>\n', '<p>\n	Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis.<br />\n	<br />\n	Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean lacinia bibendum nulla sed consectetur.<br />\n	<br />\n	Curabitur blandit tempus porttitor. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed diam eget risus varius blandit sit amet non magna.<br />\n	<br />\n	Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Etiam porta sem malesuada magna mollis euismod.</p>\n', '0', NULL, '0', 'ZONE1', 'en', 1, '2012-07-15 10:28:45', '2012-07-15 10:30:33'),
(2, 1, 50, 1, '/my-second-blog-post', 'my second blog post', '2012-06-15 12:31:00', '2014-06-15 12:31:00', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.', '<p>\n	Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Sed posuere consectetur est at lobortis. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.<br />\n	<br />\n	Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna.<br />\n	<br />\n	Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.<br />\n	<br />\n	Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean lacinia bibendum nulla sed consectetur.</p>\n', '0', NULL, '0', 'ZONE1', 'en', 1, '2012-07-15 10:32:33', '2012-07-15 10:32:47'),
(3, 1, 50, 1, '/this-is-a-demo-blog-post', 'this is a demo blog post', '2012-07-15 12:33:00', '2014-07-15 12:33:00', '<p>\n	Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Curabitur blandit tempus porttitor. Cras mattis consectetur purus sit amet fermentum. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n', '<p>\n	Donec ullamcorper nulla non metus auctor fringilla. Sed posuere consectetur est at lobortis. Maecenas faucibus mollis interdum. Donec ullamcorper nulla non metus auctor fringilla.<br />\n	<br />\n	Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Curabitur blandit tempus porttitor. Vestibulum id ligula porta felis euismod semper. Curabitur blandit tempus porttitor.<br />\n	<br />\n	Maecenas sed diam eget risus varius blandit sit amet non magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Maecenas faucibus mollis interdum. Donec sed odio dui. Cras mattis consectetur purus sit amet fermentum. Nullam id dolor id nibh ultricies vehicula ut id elit.<br />\n	<br />\n	Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas faucibus mollis interdum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n', '0', NULL, '0', 'ZONE1', 'en', 1, '2012-07-15 10:34:16', '2012-07-15 10:35:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_blogs_blogs`
--

CREATE TABLE IF NOT EXISTS `pongo_blogs_blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsblog_id` int(11) NOT NULL,
  `cmsblogrel_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_blogs_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_blogs_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsblog_id` int(11) NOT NULL,
  `cmspage_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `pongo_blogs_pages`
--

INSERT INTO `pongo_blogs_pages` (`id`, `cmsblog_id`, `cmspage_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 2, 5, 1, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(3, 3, 5, 1, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_blogs_tags`
--

CREATE TABLE IF NOT EXISTS `pongo_blogs_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsblog_id` int(11) NOT NULL,
  `cmstag_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_downloads`
--

CREATE TABLE IF NOT EXISTS `pongo_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_elements`
--

CREATE TABLE IF NOT EXISTS `pongo_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `zone` varchar(20) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `pongo_elements`
--

INSERT INTO `pongo_elements` (`id`, `author_id`, `name`, `label`, `text`, `zone`, `lang`, `is_valid`, `created_at`, `updated_at`) VALUES
(1, 1, 'credits', 'credits', '<h1>About us</h1>\n\n[$IMAGE[{"file":"pongoweb_logo.png", "w":"400"}]]\n\n<p><strong>PongoCMS</strong> is an Open Source project brought to you by <a href="http://www.pongoweb.it" target="_blank">PongoWEB</a></p>\n\n[$SOCIAL[{"what":"follow","user":"PongoWEB"}]]', 'ZONE1', 'en', 1, '2012-07-10 15:18:35', '2012-07-10 17:14:30'),
(2, 1, 'author', 'author', '<h2>About the author</h2>\n\n<p>[$IMAGE[{"file":"fabio_fumis.jpg", "w":"90", "h":"90"}]]<strong>Fabio Fumis</strong> is a professional web developer based in <strong>Monfalcone</strong> - <strong>ITALY</strong>.<br>He began to take interest in web development since 1996, when he was 20.<br>In his portfolio an e-commerce website for a leading clothing italian company, a social community website <strong>Bisiacaria.com</strong> and many company websites.<br>Today he loves to stay informed about new web technologies, playing with <strong>Laravel</strong> framework, coding new <strong>jQuery</strong> plugins and riding his <strong>Ducati Monster 900</strong> motorbike.</p>\n\n[$SOCIAL[{"what":"follow","user":"FFumis"}]]', 'ZONE2', 'en', 1, '2012-07-10 15:23:10', '2012-07-10 17:14:41'),
(3, 1, 'intro', 'intro', '<h1>Welcome to PongoCMS!</h1>\n\n<p>Hello Cms User and welcome to the <strong>demo site</strong> of PongoCMS, the brand new Open Source PHP5 CMS built on top of <strong><a href="http://laravel.com">Laravel 3.2 PHP Framework</a></strong> and <strong><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap 2.x</a></strong></p>\n\n<h3>Where and how to start?</h3>\n\n<p>Building a new website with PongoCMS means <strong>adding and editing content</strong> trough its <strong>backend interface</strong> and then <strong>designing a new HTML / CSS theme</strong> to display the <strong>site frontend</strong> aspect.</p>\n\n<p>This green frontend layout is based on <strong>default theme</strong> located at <code>/bundles/cms/views/theme</code> that you automatically installed during setup process through the Laravel''s Artisan CLI command: <code>php artisan cms::setup</code></p>\n\n<p>You will certainly want to build your own theme but before talking about frontend and building up a custom theme, let''s see how to gain access to backend interface.</p>\n\n<h3>Time to play with the interface</h3>\n\n<p>To gain access to the PongoCMS admin interface, just add <code>/cms</code> slug to the end of your site base url or [$LINK[{"url":"cms","label":"click here","target":"_blank"}]] to open it right now and use your first setup access credentials to log in: <code>admin // admin</code></p>\n\n<h3>Ready to build your own theme?</h3>\n\n<p>Connect to <a href="http://pongocms.com" target="_blank">pongocms.com</a> and follow the <a href="http://pongocms.com/theme-tutorial" target="_blank">PongoCMS Theme Tutorial</a>.</p>', 'ZONE1', 'en', 1, '2012-07-10 15:34:52', '2012-07-10 15:39:20'),
(4, 1, 'guide', 'quick guide', '<h2>Quick start guide</h2>\n\n<ol>\n<li>Clone <strong>default</strong> theme in <code>/bundles/cms/views/theme</code> and give it a <strong>name without spaces</strong>.</li>\n<li>Open theme''s <strong>theme.php</strong> and set<br><code>name</code>, <code>template</code>, <code>header</code>, <code>footer</code> and <code>layout</code> array keys as <strong>/layouts</strong>, <strong>/partials</strong> and <strong>/templates</strong> theme filenames.</li>\n<li>Map <code>''ZONEXX'' => ''Zone_Name''</code> to your <strong>/layouts</strong> files placeholders for each <code>''layout_NAME''</code>.</li>\n<li>Set <code>asset</code> array key with all your asset details, then copy your asset fils into <strong>/public</strong> theme folder.</li>\n<li>Run <code>php artisan cms::setup:theme theme_name</code> to <strong>activate</strong> it.</li>	\n</ol>', 'ZONE2', 'en', 1, '2012-07-10 15:40:13', '2012-07-10 15:40:53'),
(5, 1, 'intro', 'intro', '<h1>Benvenuto in PongoCMS!</h1>\n\n<p>Salve Utente e benvenuto nel sito demo di PongoCMS, il nuovo CMS Open Source in PHP5 sviluppato con <strong><a href="http://laravel.com">Laravel 3.2 PHP Framework</a></strong> e <strong><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap 2.x</a></strong></p>\n\n<h3>Dove e come iniziare?</h3>\n\n<p>Costruire un sito web con PongoCMS significa <strong>aggiungere e modificare contenuti</strong> attraverso la sua <strong>interfaccia di amministrazione</strong> e <strong>impostare un nuovo tema con HTML e CSS</strong>.</p>\n\n<p>Questo layout "verde" è basato sul <strong>tema di default</strong> situato in <code>/bundles/cms/views/theme</code> che hai automaticamente installato durante la fase di setup attraverso l''uso del comando <code>php artisan cms::setup</code> messo a disposizione dalla Artisan CLI di Laravel.</p>\n\n<p>Molto probabilmente vorrai creare un tuo tema personalizzato ma prima di parlare del frontend e di come costruire un tema personalizzato, diamo un''occhiata su come accedere all''interfaccia di amministrazione.</p>\n\n<h3>E'' ora di provare l''amministrazione</h3>\n\n<p>Per ottenere l''accesso all''interfaccia di amministrazione di PongoCMS, aggiungi semplicemente <code>/cms</code> alla fine del tuo indirizzo web base oppure [$LINK[{"url":"cms","label":"clicca qui","target":"_blank"}]] per aprirla subito. Usa queste credenziali per eseguire il primo login: <code>admin // admin</code></p>\n\n<h3>Pronto per costruire il tuo tema?</h3>\n\n<p>Connettiti a <a href="http://pongocms.com" target="_blank">pongocms.com</a> e segui il <a href="http://pongocms.com/theme-tutorial" target="_blank">PongoCMS Theme Tutorial</a>.</p>', 'ZONE1', 'it', 1, '2012-07-10 18:00:25', '2012-07-10 18:25:08'),
(6, 1, 'guida', 'guida', '<h2>Per iniziare velocemente</h2>\n\n<ol>\n<li>Duplica il tema <strong>default</strong> in <code>/bundles/cms/views/theme</code> e dagli un nome <strong>senza spazi</strong>.</li>\n<li>Apri <strong>theme.php</strong> del tema e imposta le array keys <code>name</code>, <code>template</code>, <code>header</code>, <code>footer</code> <br>e <code>layout</code> con i nomi dei file del tema presenti in <strong>/layouts</strong>, <strong>/partials</strong> e <strong>/templates</strong>.</li>\n<li>Mappa un <code>''ZONEXX'' => ''Nome_Zona''</code> in ogni array<br><code>''layout_NAME''</code> e per ogni placeholder presente nei file di layout dentro a <strong>/layouts</strong>.</li>\n<li>Imposta l''array key <code>asset</code> con tutti i dettagli degli asset, poi copia i file degli asset nella cartella <strong>/public</strong> del tema.</li>\n<li>Avvia <code>php artisan cms::setup:theme theme_name</code> per <strong>attivare</strong> il tema.</li>	\n</ol>', 'ZONE2', 'it', 1, '2012-07-10 18:01:03', '2012-07-10 18:46:08'),
(7, 1, 'credits', 'credits', '<h1>Chi siamo</h1>\n\n[$IMAGE[{"file":"pongoweb_logo.png", "w":"400"}]]\n\n<p><strong>PongoCMS</strong> un progetto Open Source sviluppato da <a href="http://www.pongoweb.it" target="_blank">PongoWEB</a></p>\n\n[$SOCIAL[{"what":"follow","user":"PongoWEB"}]]', 'ZONE1', 'it', 1, '2012-07-10 18:48:18', '2012-07-10 19:04:57'),
(8, 1, 'author', 'author', '<h2>Note sull''autore</h2>\n\n<p>[$IMAGE[{"file":"fabio_fumis.jpg", "w":"90", "h":"90"}]]<strong>Fabio Fumis</strong> è uno sviluppatore web con base a <strong>Monfalcone</strong> - <strong>ITALY</strong>.<br>Si è interessato di sviluppo web fin dal 1996, quando aveva 20 anni.<br>Tra i suoi lavori, un sistema e-commerce per un''importante brand di abbigliamento italiano, una community social <strong>Bisiacaria.com</strong> e moltissimi siti aziendali e istituzionali.<br>Attualmente ama tenersi sempre informato riguardo le ultime novità web, giocare con il framework <strong>Laravel</strong>, sviluppare nuovi plugin <strong>jQuery</strong> e scorrazzare con la sua <strong>Ducati Monster 900.</strong></p>\n\n[$SOCIAL[{"what":"follow","user":"FFumis"}]]', 'ZONE2', 'it', 1, '2012-07-10 18:48:18', '2012-07-10 19:11:48'),
(9, 1, 'blog_preview', 'blog', '[$PREVIEW[{"source":"blogs","n":"2"}]]', 'ZONE1', 'en', 1, '2012-07-15 10:43:13', '2012-07-15 16:13:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_elements_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_elements_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmselement_id` int(11) NOT NULL,
  `cmspage_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `pongo_elements_pages`
--

INSERT INTO `pongo_elements_pages` (`id`, `cmselement_id`, `cmspage_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 2, 2, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(3, 3, 1, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(4, 4, 1, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(5, 5, 3, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(6, 6, 3, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(7, 7, 4, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(8, 8, 4, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(9, 9, 5, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_files`
--

CREATE TABLE IF NOT EXISTS `pongo_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ext` varchar(10) NOT NULL,
  `size` int(11) NOT NULL,
  `w` int(11) NOT NULL,
  `h` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `is_image` tinyint(1) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `pongo_files`
--

INSERT INTO `pongo_files` (`id`, `name`, `ext`, `size`, `w`, `h`, `path`, `thumb`, `is_image`, `is_valid`, `created_at`, `updated_at`) VALUES
(1, 'fabio_fumis.jpg', 'jpg', 50647, 480, 480, '/files/img/fabio_fumis.jpg', '/files/img/thumb/fabio_fumis_thumb.jpg', 1, 1, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 'pongoweb_logo.png', 'png', 58934, 500, 300, '/files/img/pongoweb_logo.png', '/files/img/thumb/pongoweb_logo_thumb.png', 1, 1, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_files_banners`
--

CREATE TABLE IF NOT EXISTS `pongo_files_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsfile_id` int(11) NOT NULL,
  `cmsbanner_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `date_off` datetime NOT NULL,
  `is_blank` tinyint(1) NOT NULL,
  `wm` tinyint(1) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_files_downloads`
--

CREATE TABLE IF NOT EXISTS `pongo_files_downloads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsfile_id` int(11) NOT NULL,
  `cmsdownload_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_files_galleries`
--

CREATE TABLE IF NOT EXISTS `pongo_files_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsfile_id` int(11) NOT NULL,
  `cmsgallery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_files_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_files_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsfile_id` int(11) NOT NULL,
  `cmspage_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pongo_files_pages`
--

INSERT INTO `pongo_files_pages` (`id`, `cmsfile_id`, `cmspage_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 2, 2, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(3, 1, 4, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(4, 2, 4, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_filetexts`
--

CREATE TABLE IF NOT EXISTS `pongo_filetexts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `alt` text NOT NULL,
  `title` text NOT NULL,
  `caption` text NOT NULL,
  `label` varchar(255) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_galleries`
--

CREATE TABLE IF NOT EXISTS `pongo_galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `thumb` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_laravel_migrations`
--

CREATE TABLE IF NOT EXISTS `pongo_laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pongo_laravel_migrations`
--

INSERT INTO `pongo_laravel_migrations` (`bundle`, `name`, `batch`) VALUES
('cms', '2012_07_10_000436_create_galleries', 1),
('cms', '2012_07_10_000457_create_files_galleries', 1),
('cms', '2012_07_10_003114_create_files', 1),
('cms', '2012_07_10_003816_create_files_pages', 1),
('cms', '2012_07_10_004356_create_downloads', 1),
('cms', '2012_07_10_004430_create_files_downloads', 1),
('cms', '2012_07_10_095151_create_filetexts', 1),
('cms', '2012_07_10_105232_create_elements', 1),
('cms', '2012_07_10_105427_create_elements_pages', 1),
('cms', '2012_07_10_121248_create_tags', 1),
('cms', '2012_07_10_121302_create_blogs_tags', 1),
('cms', '2012_07_10_123432_create_translations', 1),
('cms', '2012_07_10_134012_create_menus', 1),
('cms', '2012_07_10_140351_create_menus_pages', 1),
('cms', '2012_07_10_142852_create_files_banners', 1),
('cms', '2012_07_10_142903_create_banners', 1),
('cms', '2012_07_10_145950_create_blogs_blogs', 1),
('cms', '2012_07_10_165724_create_blogs', 1),
('cms', '2012_07_10_165742_create_blogs_pages', 1),
('cms', '2012_07_10_171651_create_session_table', 1),
('cms', '2012_07_10_231136_create_roles', 1),
('cms', '2012_07_10_231143_create_users', 1),
('cms', '2012_07_10_231243_create_pages', 1),
('cms', '2012_07_10_233410_create_pages_pages', 1),
('cms', '2013_01_23_174053_create_users_details', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_menus`
--

CREATE TABLE IF NOT EXISTS `pongo_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `parent_start` int(11) NOT NULL,
  `is_nested` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `pongo_menus`
--

INSERT INTO `pongo_menus` (`id`, `name`, `lang`, `parent_start`, `is_nested`, `created_at`, `updated_at`) VALUES
(1, 'nav', 'en', 0, 0, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 'nav', 'it', 0, 0, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_menus_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_menus_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmsmenu_id` int(11) NOT NULL,
  `cmspage_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `pongo_menus_pages`
--

INSERT INTO `pongo_menus_pages` (`id`, `cmsmenu_id`, `cmspage_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(2, 1, 2, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(3, 2, 3, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(4, 2, 4, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52'),
(5, 1, 5, 1000000, '2012-07-10 15:17:52', '2012-07-10 15:17:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_level` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `preview` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyw` text,
  `descr` text,
  `template` varchar(100) NOT NULL,
  `header` varchar(100) NOT NULL,
  `layout` varchar(100) NOT NULL,
  `footer` varchar(100) NOT NULL,
  `access_level` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `is_home` tinyint(1) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `pongo_pages`
--

INSERT INTO `pongo_pages` (`id`, `parent_id`, `role_id`, `role_level`, `author_id`, `slug`, `name`, `preview`, `title`, `keyw`, `descr`, `template`, `header`, `layout`, `footer`, `access_level`, `extra_id`, `order_id`, `lang`, `is_home`, `is_valid`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 50, 1, '/home', 'Home', '', 'A multilingual PHP CMS', '', '', 'default', 'default', 'home', 'default', 0, 0, 1000000, 'en', 1, 1, '2012-07-09 19:27:04', '2012-07-10 19:15:26'),
(2, 0, 1, 50, 1, '/about-us', 'About us', '', 'About this PHP CMS', '', '', 'default', 'default', 'home', 'default', 0, 0, 1000000, 'en', 0, 1, '2012-07-10 15:00:38', '2012-07-10 19:15:42'),
(3, 0, 1, 50, 1, '/home', 'Home', '', 'Un CMS in PHP per gestire siti multilingua', '', '', 'default', 'default', 'home', 'default', 0, 0, 1000000, 'it', 1, 1, '2012-07-10 15:12:36', '2012-07-10 19:13:30'),
(4, 0, 1, 50, 1, '/chi-siamo', 'Chi siamo', '', 'Notizie su questo CMS in PHP', '', '', 'default', 'default', 'home', 'default', 0, 0, 1000000, 'it', 0, 1, '2012-07-10 18:48:18', '2012-07-10 19:14:03'),
(5, 0, 1, 50, 1, '/blog', 'Blog', '', 'PongoCMS Blog', '', '', 'default', 'default', 'default', 'default', 0, 1, 1000000, 'en', 0, 1, '2012-07-15 09:46:28', '2012-07-15 09:47:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_pages_pages`
--

CREATE TABLE IF NOT EXISTS `pongo_pages_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cmspage_id` int(11) NOT NULL,
  `cmspagerel_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_roles`
--

CREATE TABLE IF NOT EXISTS `pongo_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pongo_roles`
--

INSERT INTO `pongo_roles` (`id`, `name`, `level`) VALUES
(1, 'admin', 50),
(2, 'manager', 40),
(3, 'editor', 30),
(4, 'user', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_sessions`
--

CREATE TABLE IF NOT EXISTS `pongo_sessions` (
  `id` varchar(40) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_tags`
--

CREATE TABLE IF NOT EXISTS `pongo_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_translations`
--

CREATE TABLE IF NOT EXISTS `pongo_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_from` varchar(5) NOT NULL,
  `word` text NOT NULL,
  `value` text NOT NULL,
  `lang_to` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `pongo_translations`
--

INSERT INTO `pongo_translations` (`id`, `lang_from`, `word`, `value`, `lang_to`, `created_at`, `updated_at`) VALUES
(1, 'en', 'site language', 'scegli la lingua', 'it', '2012-07-09 21:09:08', '2012-07-10 16:03:51'),
(2, 'en', 'a CMS built upon Laravel 3.2 PHP Framework', 'un CMS basato su Laravel 3.2 PHP Framework', 'it', '2012-07-10 15:10:24', '2012-07-10 15:10:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_users`
--

CREATE TABLE IF NOT EXISTS `pongo_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_level` int(11) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `editor` varchar(20) NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `pongo_users`
--

INSERT INTO `pongo_users` (`id`, `role_id`, `username`, `email`, `password`, `role_level`, `lang`, `editor`, `is_valid`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin', '$2a$08$llvsTM242hRKi89IGdn97uIhKJLMPaCZ.FYZATz1m25Usx/816Xaq', 50, 'en', 'ckeditor', 1, '2013-04-08 08:53:36', '2013-04-08 08:53:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pongo_users_details`
--

CREATE TABLE IF NOT EXISTS `pongo_users_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `number` varchar(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `cel` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
