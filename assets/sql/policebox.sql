-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 62.72.62.1    Database: u687609827_policebox
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_pessoa`
--

DROP TABLE IF EXISTS `tb_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `ano_nascimento` year(4) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone_1` varchar(11) DEFAULT NULL,
  `telefone_2` varchar(11) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `n_casa` int(5) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa`
--

LOCK TABLES `tb_pessoa` WRITE;
/*!40000 ALTER TABLE `tb_pessoa` DISABLE KEYS */;
INSERT INTO `tb_pessoa` VALUES (1,'Tony Stark',1970,'12345678900','999887766','998877665','Malibu Point, CA',10880,'Malibu','Los Angeles'),(2,'Peter Parker',1995,'98765432100','111222333',NULL,'Rua Ingram, 20',3,'Forest Hills','Nova York'),(3,'Steve Rogers',1918,'45678912300','444555666',NULL,'Rua Leaman, 569',1,'Brooklyn','Nova York'),(4,'Natasha Romanoff',1984,'65432198700','777888999','770077007','Rua 48, 4A',12,'Brooklyn Heights','Nova York'),(5,'Thor Odinson',0000,'11122233344','555666777',NULL,'Asgard Palace',1,'Asgard','Asgard'),(6,'Bruce Banner',1972,'99988877766','333444555',NULL,'123 Gamma Avenue',7,'Culver City','Los Angeles'),(7,'',0000,'','',NULL,NULL,NULL,NULL,NULL),(8,'',0000,'','',NULL,NULL,NULL,NULL,NULL),(9,'',0000,'','',NULL,NULL,NULL,NULL,NULL),(10,'',0000,'','',NULL,NULL,NULL,NULL,NULL),(11,'1',2001,'1','1',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_produto`
--

DROP TABLE IF EXISTS `tb_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `descricao` blob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (1,'Star Wars Jedi Survivor',139.00,5,'jedi-survivor.png',_binary 'A história de Cal Kestis continua em Star Wars Jedi: Survivor™, uma aventura em terceira pessoa na galáxia da Respawn Entertainment, desenvolvida em colaboração com a Lucasfilm Games. Este título de jogo solo guiado pela narrativa começa 5 anos após os eventos de Star Wars Jedi: Fallen Order™, acompanhando a luta cada vez mais desesperada de Cal enquanto a galáxia se torna ainda mais sombria. Empurrado para os limites da galáxia pelo Império, Cal se verá cercado por ameaças novas e conhecidas. Como um dos últimos Cavaleiros Jedi sobreviventes, Cal precisa mostrar seu valor durante o momento mais sombrio da galáxia, mas até onde ele está disposto a ir para proteger a si, sua equipe e o legado da Ordem Jedi?'),(2,'Baldurs Gate 3',236.50,3,'baldurs-gate-3.jpg',_binary 'Reúna seu grupo e volte aos Reinos Esquecidos em uma história de amizade e traição, sacrifício e sobrevivência, e tentação pelo poder absoluto. Habilidades misteriosas despertam em você, semeadas por um parasita devorador de mentes no seu cérebro. Resista e faça a escuridão ruir a si mesma, ou aceite a corrupção e torne-se o mal supremo. Dos criadores de Divinity: Original Sin 2, este é um RPG da nova geração situado no mundo de Dungeons and Dragons. Escolha dentre diversas raças e classes de D&D ou assuma o papel de um personagem original com um histórico detalhado. Aventure-se, saqueie, lute e envolva-se em romances ao longo da sua jornada pelos Reinos Esquecidos e além. Jogue solo e escolha seus companheiros com cuidado, ou jogue em grupo com até quatro amigos no multijogador.'),(3,'Death Stranding',188.25,4,'death-stranding.png',_binary 'Do lendário diretor Hideo Kojima, surge uma experiência que desafia gêneros, ainda maior em DIRECTOR’S CUT. No futuro, um evento misterioso conhecido como Death Stranding abriu uma passagem entre os vivos e os mortos, resultando em criaturas grotescas do pós-vida andando pelo mundo arruinado, marcado por uma sociedade desolada. Jogando como Sam Bridges, sua missão é entregar esperança à humanidade ao conectar os sobreviventes de uma América devastada. Você conseguirá reunir este mundo destruído, um passo de cada vez? DEATH STRANDING DIRECTOR’S CUT no PC inclui ALTA TAXA DE QUADROS, MODO FOTO e SUPORTE A MONITORES ULTRAWIDE. Também inclui conteúdo crossover da série HALF-LIFE, da Valve Corporation; e de Cyberpunk 2077, da CD Projekt Red. Esteja conectado a jogadores no mundo todo com o Social Strand System™.'),(4,'Devil May Cry5',275.80,2,'devil-may-cry5.png',_binary 'O melhor caçador de demônios está de volta com estilo, no jogo que os fãs de ação estavam esperando. Agora inclui o conteúdo baixável Personagem Jogável: Vergil (também disponível separadamente). Um novo episódio na lendária série de ação, Devil May Cry 5 traz junto sua clássica mistura de ação turbinada com personagens originais de outro mundo e a mais nova tecnologia de jogos Capcom para trazer uma obra de arte de ação e aventura visualmente inovadora'),(5,'Ghost of Tshushima',217.90,5,'ghost-of-tshushima.jpg',_binary 'Experimente a jornada de Jin Sakai pela primeira vez no PC e desfrute da experiência completa de Ghost of Tsushima na Versão do Diretor. No final do século XIII, o império mongol devastou nações em sua campanha para conquistar o Oriente. A Ilha de Tsushima é tudo que resta entre a ilha principal do Japão e a imensa frota invasora dos mongóis liderada por um general ardiloso e implacável, Khotun Khan. Enquanto a ilha é devastada pela primeira onda de ataques mongóis, surge Jin Sakai, um corajoso guerreiro samurai que é um dos últimos sobreviventes de seu clã. Ele está decidido a fazer o que for preciso, custe o que custar, para proteger seu povo e recuperar seu lar. Para isso, será necessário deixar de lado as tradições que o moldaram como guerreiro e forjar um novo caminho, o do Fantasma, travando uma guerra atípica pela liberdade de Tsushima.'),(6,'Mirage',146.70,1,'mirage.png',_binary 'Descubra uma experiência narrativa de ação-aventura que acompanha a transformação de um jovem rebelde em um Mestre Assassino de destino conflituoso. Conheça um elenco inspirador de personagens que darão forma ao destino de Basim e que talvez sejam mais do que pareçam...'),(7,'Requiem',194.10,3,'requiem.png',_binary 'No mar distante, uma ilha chama você... Embarque em uma comovente jornada por um cativante mundo brutal distorcido por forças sobrenaturais. Depois que seu lar foi devastado, Amicia e Hugo viajam para o sul, para novas regiões e cidades cheias de vida. Eles tentam começar uma vida nova e controlar a maldição de Hugo. Mas, quando os poderes dele retornam, morte e destruição voltam com uma enxurrada de ratos famintos. Forçados a fugir mais uma vez, os irmãos depositam suas esperanças em uma ilha das profecias que pode conter a chave para salvar Hugo. Descubra o preço pago para salvar aqueles que você ama nesta desesperada luta pela sobrevivência. Ataque nas sombras ou use uma variedade de armas, ferramentas e poderes místicos para superar inimigos e desafios.'),(8,'Valhalla',163.40,5,'valhalla.jpg',_binary 'Em Assassin’s Creed® Valhalla, você é Eivor, um guerreiro Viking temível que cresceu em meio a histórias de batalhas e glória. Explore um mundo aberto misterioso e belo que tem como cenário a brutal Idade das Trevas da Inglaterra. Em Assassin’s Creed Valhalla: Dawn of Ragnarök, a expansão mais ambiciosa na história da franquia, Eivor precisa encarar seu destino como Odin, o deus nórdico da batalha e da sabedoria. Use novos poderes divinos e embarque em uma jornada desesperada por um mundo impressionante. Conclua uma saga Viking lendária e salve seu filho do castigo dos deuses. Inclui Forgotten Saga, um novo modo de jogo rogue-lite GRÁTIS para todas as pessoas que jogam Assassin\'s Creed Valhalla'),(9,'Wukong',220.80,4,'wukong.png',_binary 'Black Myth: Wukong é um RPG de ação inspirado na mitologia chinesa. A história é baseada em \'Jornada para o Oeste\', um dos Quatro Grandes Romances Clássicos da literatura do país. Você assume o papel do Predestinado e tem a responsabilidade de encarar os desafios e as maravilhas do mundo para desvendar a verdade obscura por trás de uma lenda gloriosa do passado.Entre em um reino fascinante repleto de maravilhas e descobertas da antiga mitologia chinesa! No papel principal de Predestinado, você verá cenários de tirar o fôlego do romance clássico \'Jornada para o Oeste\' e criará um novo conto épico enquanto se aventura.'),(10,'Cult of The Lamb',64.95,5,'cult-of-the-lamb.png',_binary 'Cult of the Lamb coloca o jogador no papel de um cordeiro possuído, que é salvo da aniquilação por um estranho sinistro e precisa quitar sua dívida recrutando seguidores leais em nome dele. Crie seu próprio culto em uma terra de falsos profetas, aventurando-se por regiões misteriosas e diversas para criar uma comunidade fiel de Seguidores da floresta e para propagar sua Palavra e se tornar o único culto verdadeiro.'),(11,'Deus Ex: Mankind Divided',124.99,3,'deus-ex-mankind-divided.png',_binary 'O Ano é 2029, e humanos mecanicamente aprimorados são considerados exilados, vivendo totalmente segregados do resto da sociedade. Agora, o experiente agente disfarçado Adam Jensen é forçado a agir em um mundo intolerante. Armado com um novo arsenal de modernas armas e aprimoramentos, ele deve prosseguir com cautela, escolhendo com cuidado os seus aliados, para desvendar uma enorme conspiração mundial.'),(12,'Far Cry 6',249.99,4,'far-cry-6.png',_binary 'Boas-vindas a Yara, um paraíso tropical que parou no tempo. Antón Castillo, o ditador de Yara, pretende resgatar a glória do seu país a qualquer custo, junto com seu filho, Diego, que é tão sanguinário quanto o pai. Seu governo opressor desencadeou uma revolução. - Jogue como Dani Rojas, que nasceu em Yara e luta na guerrilha revolucionária atual para libertar sua nação. Aproveite o jogo completo, sozinho ou com um amigo no modo cooperativo. - Explore selvas, praias e cidades a pé, a cavalo, ou em uma enorme variedade de veículos incluindo barcos e jet skis enquanto luta contra o regime de Castillo no Far Cry mais extenso já criado. - Sinta a adrenalina do combate com um arsenal de centenas de armas contando com a ajuda de amigos como Chorizo, o cachorro, e Guapo, o jacaré. - Aproveite conteúdos novos e recursos adicionados desde o lançamento, incluindo quatro novas operações especiais, missões de crossover com blockbusters gratuitas, e atualizações pedidas pelos fãs como o Novo Jogo +, Auxílio ao Completista, um modo de dificuldade extra difícil, e quatro novos espaços de carregamento.'),(13,'Hades 2',88.99,4,'hades-2.png',_binary 'A primeira sequência já desenvolvida pela Supergiant Games aprimora os aspectos mais divinos do roguelike de exploração de masmorras original em uma experiência frenética, totalmente nova e infinitamente rejogável que se baseia no Submundo da mitologia grega, no surgimento da bruxaria e na profunda relação entre eles.'),(14,'Hades',75.45,5,'hades.png',_binary 'Hades é um jogo roguelike que combina os melhores aspectos dos títulos da Supergiant aclamados pela crítica, incluindo a ação rápida de Bastion, a rica atmosfera e profundidade de Transistor e a narrativa baseada em personagens de Pyre.'),(15,'Lies of P',249.90,5,'lies-of-p.png',_binary 'Você é um títere criado por Geppetto, preso numa teia de mentiras com monstros inimagináveis e figuras pouco confiáveis que ficarão entre você e os eventos no mundo de Lies of P. Uma voz misteriosa desperta você e guia seus passos pela atormentada cidade de Krat — um lugar outrora animado que foi envenenado pela loucura e sede de sangue. Em nosso soulslike, você deve adaptar suas armas e seu personagem para enfrentar horrores incalculáveis, desvendar os segredos insondáveis das elites da cidade e escolher entre confrontar as dificuldades com a verdade ou tecer mentiras para superá-las na jornada para encontrar a si mesmo.'),(16,'The Last of US part I',249.00,3,'the-last-of-us-part-i.png',_binary 'Para se defender de Infectados e outros sobreviventes humanos, os jogadores usam armas como pistolas, rifles e explosivos caseiros, assim como ataques corpo a corpo com chaves de braço, bastões e canos de metal. Os jogadores também podem entrar em sequências de combate furtivo que incluem perspectiva de câmera em close. Ataques explosivos e com armas podem resultar em decapitação e/ou desmembramento. As cenas exibem atos intensos de violência, incluindo temáticas de suicídio e tortura. Durante o jogo, um personagem faz comentários de tom sexual sobre uma revista adulta, e um personagem jovem ingere bebida alcoólica. Linguagem chula é usada frequentemente nos diálogos.');
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo`
--

DROP TABLE IF EXISTS `tb_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo`
--

LOCK TABLES `tb_tipo` WRITE;
/*!40000 ALTER TABLE `tb_tipo` DISABLE KEYS */;
INSERT INTO `tb_tipo` VALUES (1,'Ação'),(2,'Aventura'),(3,'Estratégia'),(4,'RPG'),(5,'Ficção');
/*!40000 ALTER TABLE `tb_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_produto`
--

DROP TABLE IF EXISTS `tb_tipo_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_produto` (`id_produto`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `tb_tipo_produto_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `tb_produto` (`id`),
  CONSTRAINT `tb_tipo_produto_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tb_tipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_produto`
--

LOCK TABLES `tb_tipo_produto` WRITE;
/*!40000 ALTER TABLE `tb_tipo_produto` DISABLE KEYS */;
INSERT INTO `tb_tipo_produto` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,2),(6,3,5),(7,4,1),(8,4,2),(9,4,4),(10,5,1),(11,5,2),(12,6,1),(13,6,2),(14,6,5),(15,7,2),(16,7,3),(17,8,1),(18,8,4),(19,9,1),(20,9,5),(21,10,3),(22,10,5),(23,11,1),(24,11,5),(25,12,1),(26,12,2),(27,13,1),(28,13,2),(29,13,4),(30,14,1),(31,14,2),(32,15,1),(33,15,4),(34,15,5),(35,16,1),(36,16,2),(37,16,5);
/*!40000 ALTER TABLE `tb_tipo_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pessoa` (`id_pessoa`),
  CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'homemDeFerro','jarvis123',1),(2,'homemAranha','teia123',2),(3,'capitaoAmerica','euvouLutar',3),(4,'viuvaNegra','assassinaVermelha',4),(5,'deusDoTrovao','mjolnir123',5),(6,'hulk','smash123',6),(7,'','',7),(8,'','',8),(9,'','',9),(10,'','',10),(11,'1','1',11);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'u687609827_policebox'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 11:23:06
