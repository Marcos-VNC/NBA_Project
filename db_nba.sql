-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Ago-2021 às 16:37
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_nba`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cidade', 7, 'add_cidade'),
(26, 'Can change cidade', 7, 'change_cidade'),
(27, 'Can delete cidade', 7, 'delete_cidade'),
(28, 'Can view cidade', 7, 'view_cidade'),
(29, 'Can add time', 8, 'add_time'),
(30, 'Can change time', 8, 'change_time'),
(31, 'Can delete time', 8, 'delete_time'),
(32, 'Can view time', 8, 'view_time');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$nPkJSSQFEb8hGlCX4N9oME$igOUCZdNgPx99oRQBWf792xXwe6DnDE5CpuNQTTM9GI=', '2021-08-25 13:57:41.298882', 1, 'admin2', '', '', 'admin2@admin2.com', 1, 1, '2021-08-24 11:09:55.657151'),
(2, 'pbkdf2_sha256$260000$RB1QQu1AjeKBGYCsAJ3pqQ$Bot/97RnlGHjmJkCNQOqOGppDwHKVpcGNUlqeGyCH34=', NULL, 0, 'Marcos', 'Marcos Vinicius', 'Cardoso Correa', 'marcos@marcos.com', 0, 1, '2021-08-25 13:50:55.574036'),
(3, 'pbkdf2_sha256$260000$6KtPMiXJhPK2Fny4zMcKO4$BEmnD5C7sv8avIkW2l6lbAsc+SrUk5oACpuAqh88l/E=', '2021-08-25 14:26:41.961821', 0, 'Marcos_vnc', 'Marcos Vinicius', 'Cardoso Correa', 'marcosvn@marcos.com', 0, 1, '2021-08-25 13:53:22.023227');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-24 11:27:07.313032', '6', 'Charlotte', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-08-24 11:37:00.605012', '6', 'Charlotte Hornets', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'cidade'),
(8, 'home', 'time'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-18 13:10:29.335709'),
(2, 'auth', '0001_initial', '2021-08-18 13:10:43.240416'),
(3, 'admin', '0001_initial', '2021-08-18 13:10:48.012158'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-18 13:10:48.075121'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-18 13:10:48.283367'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-18 13:10:49.565974'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-18 13:10:50.986035'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-18 13:10:51.281979'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-18 13:10:51.441041'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-18 13:10:52.623446'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-18 13:10:52.702416'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-18 13:10:52.776358'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-18 13:10:53.058227'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-18 13:10:53.391035'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-18 13:10:53.772814'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-18 13:10:53.850792'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-18 13:10:54.068643'),
(18, 'home', '0001_initial', '2021-08-18 13:10:58.737036'),
(19, 'home', '0002_alter_time_datainicio', '2021-08-18 13:10:58.845973'),
(20, 'home', '0003_auto_20210817_0935', '2021-08-18 13:10:59.376817'),
(21, 'sessions', '0001_initial', '2021-08-18 13:11:00.947428'),
(22, 'home', '0004_alter_time_datainicio', '2021-08-18 13:13:50.489738'),
(23, 'home', '0005_auto_20210824_0813', '2021-08-24 11:13:53.286353');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4v7i4n8g8tivxj52ikpxaw4xt7b7whyj', '.eJxVjEsOwjAMBe-SNYrSpFZjluw5Q-TYFimgROpnVXF3WqkL2L6ZeZtJtC4lrbNOaRRzNcFcfrdM_NJ6AHlSfTTLrS7TmO2h2JPO9t5E37fT_TsoNJe9VgWmjgl6BBEKHB0GFWGkHQEEHxFVe-eIoidF9uI6P-TBe3UBzOcLDvY4WQ:1mItrW:0nqTtenhqwXVBR3i_1g85IUfF1YeTRkjiDiFEzaK7cU', '2021-09-08 14:26:42.012805'),
('nsh4t66m9ledb7dt909rg2ldlujlj10b', '.eJxVjEEOwiAQRe_C2pBMBhhw6d4zkIFBqRpISrsy3t026UK3773_3yryutS4jjLHSdRZgTr9ssT5Wdou5MHt3nXubZmnpPdEH3boa5fyuhzt30HlUbc1IYNBdmAT3zxiEQpQvAsejQTyYJgNZOQNZ7DkyAsEI-KtJSlZfb7Dcjct:1mIUKy:Cb_eTz-83cZuK2hA1LCueIuTryXwW7NvTIoTrW7fA6s', '2021-09-07 11:11:24.611690');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_cidade`
--

CREATE TABLE `home_cidade` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `regiao` varchar(10) NOT NULL,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_cidade`
--

INSERT INTO `home_cidade` (`id`, `nome`, `regiao`, `estado`) VALUES
(1, 'Brooklyn', 'Atlantico', 'Nova Iorque'),
(2, 'Dallas', 'Sudoeste', 'Texas'),
(3, 'São Francisco', 'Pácifico', 'California'),
(4, 'Chicago', 'Central', 'LLLinois'),
(5, 'Los Angeles', 'Pácifico', 'California'),
(6, 'Charlotte', 'Sudoeste', 'Carolina do Norte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_time`
--

CREATE TABLE `home_time` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `dataInicio` datetime(6) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `Cidade_id` bigint(20) NOT NULL,
  `estadio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_time`
--

INSERT INTO `home_time` (`id`, `nome`, `descricao`, `dataInicio`, `mostrar`, `foto`, `Cidade_id`, `estadio`) VALUES
(1, 'Brooklyn Nets', 'Time do Barba (James Harden)', '2021-08-17 11:26:34.000000', 1, 'fotos/21/08/17/Brooklyn_Nets.png', 1, 'etadios/21/08/17/barclays_center.jpg'),
(2, 'Dallas Maveicks', 'Melhor time da NBA', '2021-08-17 11:58:08.000000', 1, 'fotos/21/08/17/mavericks.png', 2, 'etadios/21/08/17/american_airlines_center.jpg'),
(3, 'Golden State Warriors', 'Time do glorioso Stephen Curry', '2021-08-17 11:58:08.000000', 1, 'fotos/21/08/17/warriors.png', 3, 'etadios/21/08/17/Chase_Center.jpg'),
(4, 'Chicago Bulls', 'Time do Rei Jordan', '2021-08-17 11:58:08.000000', 1, 'fotos/21/08/17/bulls.png', 4, 'etadios/21/08/17/united_center.jpg'),
(5, 'Los Angeles Lakers', 'Time do promissor Rei Lebron James!', '2021-08-17 12:34:26.000000', 1, 'fotos/21/08/17/lakers.png', 5, 'etadios/21/08/17/staples_center.jpg'),
(6, 'Charlotte Hornets', 'Grande time, tem o logo mais bonito da NBA', '2021-08-24 11:13:34.000000', 1, 'fotos/21/08/24/hornets.png', 6, 'etadios/21/08/24/spectrum_center.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `home_cidade`
--
ALTER TABLE `home_cidade`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_time`
--
ALTER TABLE `home_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_time_Cidade_id_c30e4bb8_fk_home_cidade_id` (`Cidade_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `home_cidade`
--
ALTER TABLE `home_cidade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `home_time`
--
ALTER TABLE `home_time`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `home_time`
--
ALTER TABLE `home_time`
  ADD CONSTRAINT `home_time_Cidade_id_c30e4bb8_fk_home_cidade_id` FOREIGN KEY (`Cidade_id`) REFERENCES `home_cidade` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
