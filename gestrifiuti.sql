-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Set 12, 2018 alle 16:14
-- Versione del server: 5.7.19
-- Versione PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestrifiuti`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_category`
--

DROP TABLE IF EXISTS `faq_cb_category`;
CREATE TABLE IF NOT EXISTS `faq_cb_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `fk_category_id` int(11) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_category_fk_category_id_226d3a48` (`fk_category_id`),
  KEY `faq_cb_category_fk_user_id_1f3087d8` (`fk_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_category`
--

INSERT INTO `faq_cb_category` (`id`, `name`, `description`, `fk_category_id`, `fk_user_id`) VALUES
(1, 'Per le aziende', 'In questa sezione sono raggruppate tutte le domande più comuni (e le relative risposte) se avete un\'attività commerciale', NULL, 1),
(2, 'Per il cittadino', 'In questa sezione sono raggruppate tutte le domande più comuni (e le relative risposte) riguardo la gestione dei rifiuti per i cittadini.', NULL, 1),
(3, 'Rifiuti speciali', 'Cosa fare e come gestire lo smaltimento di rifiuti speciali', 1, 1),
(4, 'Generiche', 'Domande frequenti sulla gestione dei rifiuti', NULL, 1),
(5, 'Lavorare con i rifiuti', 'Le risposte alle vostre domande riguardo le attività lavorative che coinvolgono la rivalutazione dei rifiuti', 1, 1),
(6, 'livello uno', 'Categoria di primo livello', NULL, 1),
(7, 'Livello due', 'Categoria di secondo livello', 6, 1),
(8, 'Livello tre', 'Categoria di terzo livello', 7, 1),
(9, 'Livello quattro', 'Categoria di quarto livello', 8, 1),
(10, 'Livello due bis', 'Altra categoria di secondo livello', 6, 1),
(20, 'Per il cittadino rurale', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_dummy_words`
--

DROP TABLE IF EXISTS `faq_cb_dummy_words`;
CREATE TABLE IF NOT EXISTS `faq_cb_dummy_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_dummy_words`
--

INSERT INTO `faq_cb_dummy_words` (`id`, `word`) VALUES
(148, 'piu'),
(2, 'e'),
(3, 'i'),
(4, 'o'),
(5, 'di'),
(6, 'da'),
(7, 'in'),
(8, 'con'),
(9, 'su'),
(10, 'per'),
(11, 'tra'),
(12, 'fra'),
(13, 'il'),
(14, 'lo'),
(15, 'li'),
(16, 'la'),
(17, 'le'),
(18, 'un'),
(19, 'uno'),
(20, 'una'),
(21, 'due'),
(22, 'tre'),
(23, 'quattro'),
(24, 'cinque'),
(25, 'sei'),
(26, 'sette'),
(27, 'otto'),
(28, 'nove'),
(29, 'dieci'),
(30, 'del'),
(31, 'dello'),
(32, 'della'),
(33, 'dei'),
(34, 'delle'),
(35, 'degli'),
(36, 'dell'),
(37, 'io'),
(38, 'tu'),
(39, 'egli'),
(40, 'ella'),
(41, 'noi'),
(42, 'esso'),
(43, 'essa'),
(44, 'essi'),
(45, 'voi'),
(46, 'loro'),
(47, 'dunque'),
(48, 'perchè'),
(49, 'purchè'),
(50, 'poi'),
(51, 'qualunque'),
(52, 'eccetera'),
(53, 'questo'),
(54, 'questi'),
(55, 'questa'),
(56, 'queste'),
(57, 'quello'),
(58, 'quelli'),
(59, 'quelle'),
(60, 'quella'),
(61, 'oppure'),
(62, 'nonche'),
(63, 'quali'),
(64, 'quale'),
(65, 'siete'),
(66, 'sulla'),
(67, 'posso'),
(68, 'qual'),
(69, 'come'),
(70, 'alla'),
(71, 'alle'),
(72, 'agli'),
(73, 'allo'),
(74, 'tale'),
(75, 'tali'),
(76, 'sono'),
(77, 'cosa'),
(80, 'al'),
(81, 'va'),
(82, 'che'),
(83, 'ci'),
(145, 'hanno'),
(144, 'avete'),
(143, 'abbiamo'),
(142, 'ha'),
(141, 'hai'),
(140, 'ho'),
(139, 'sono'),
(138, 'siete'),
(137, 'siamo'),
(136, 'sono'),
(135, 'chi'),
(149, 'a'),
(133, 'vostro'),
(132, 'vostri'),
(131, 'vostre'),
(130, 'vostra'),
(129, 'sua'),
(128, 'suoi'),
(127, 'miei'),
(126, 'sua'),
(125, 'suo'),
(124, 'mio'),
(123, 'via'),
(122, 'hoc'),
(121, 'ad'),
(120, 'per'),
(119, 'dall'),
(118, 'ho'),
(117, 'vi'),
(116, 'ecc'),
(115, 'es'),
(150, 'e'),
(151, 'i'),
(152, 'o'),
(153, 'u'),
(154, 'devo'),
(155, 'deve'),
(156, 'dal'),
(157, 'dai'),
(158, 'fare'),
(159, 'cose'),
(160, 'possa'),
(161, 'debba'),
(162, 'devi'),
(163, 'devono'),
(164, 'dovete'),
(165, 'debbano'),
(166, 'ma'),
(167, 'se'),
(168, 'non'),
(169, 'no'),
(170, 'bisogno'),
(171, 'desidero'),
(172, 'desidera'),
(173, 'desideri'),
(174, 'desideriamo'),
(175, 'desiderate'),
(176, 'desiderano'),
(177, 'fatta'),
(178, 'fatto'),
(179, 'fai'),
(180, 'fanno'),
(181, 'fate'),
(182, 'si'),
(183, 'occupa'),
(184, 'occupo'),
(185, 'occupi'),
(186, 'occupiamo'),
(187, 'occupate'),
(188, 'occupano'),
(189, 'vorrei'),
(190, 'vorresti'),
(191, 'vorrebbe'),
(192, 'vorremmo'),
(193, 'vorremo'),
(194, 'vorreste'),
(195, 'vorrebbero'),
(196, 'voglio'),
(197, 'vuoi'),
(198, 'vuole'),
(199, 'vogliono'),
(200, 'vogliamo'),
(201, 'volete'),
(202, 'avere'),
(203, 'essere'),
(204, 'dirigo'),
(205, 'dirigi'),
(206, 'dirige'),
(207, 'dirigiamo'),
(208, 'dirigete'),
(209, 'diriggono'),
(223, 'cos'),
(224, 'ed'),
(225, 'so'),
(226, 'dove'),
(227, 'quando');

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_faq`
--

DROP TABLE IF EXISTS `faq_cb_faq`;
CREATE TABLE IF NOT EXISTS `faq_cb_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `fk_category_id` int(11) DEFAULT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_faq_fk_category_id_6337b909` (`fk_category_id`),
  KEY `faq_cb_faq_fk_user_id_0a103ef8` (`fk_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_faq`
--

INSERT INTO `faq_cb_faq` (`id`, `question`, `answer`, `fk_category_id`, `fk_user_id`) VALUES
(1, 'Ho un\'impresa e devo smaltire rifiuti speciali e pericolosi (es. bombole di acetilene, calcinacci ecc..)', 'E\' necessario rivolgersi a imprese autorizzate allo smaltimento di rifiuti speciali.\r\nL\'elenco delle imprese che smaltiscono rifiuti in Toscana e\' disponibile online. e\' possibile effettuare ricerche secondo vari parametri, tra cui il codice CER identificativo del rifiuto, (ad es. Bombola di acetilene CER 160504 oppure Calcinacci> CER da 1701 a 1709). E\' inoltre disponibile, con l\'elenco delle imprese che smaltiscono rifiuti in Italia, il sito Web dell\'Albo Gestori Ambientali.', 3, 1),
(2, 'Sono un medico: a quali adempimenti sono tenuto in materia di rifiuti?', 'Gli enti e professionisti, organizzati come impresa ai sensi dell\'art. 2238 del Codice Civile (per esempio cliniche, poliambulatori, ecc.), che erogano prestazioni sanitarie con relativa produzione di rifiuti pericolosi, sono tenuti al MUD e al SISTRI. Non vi sono invece tenuti i medici/odontoiatri/veterinari che svolgono l\'attivita\' in conto proprio o associati ad altri medici professionisti.', 3, 1),
(3, 'Ho bisogno di dati sulla quantita\' di rifiuti prodotti e sulla raccolta differenziata', 'Alcuni  dati di sintesi relativi alla produzione di rifiuti urbani e alla percentuale di raccolta differenziata in Toscana sono disponibili sul nostro sito Web, unitamente ai riferimenti per la consultazione dei dati completi per la Toscana - elaborati dall\'Agenzia Regionale Recupero Risorse (ARRR) - e l\'Italia, elaborati da ISPRA.', 4, 1),
(5, 'Desidero realizzare un impianto di smaltimento o recupero rifiuti, a chi devo fare domanda?', 'Se desideri realizzare un nuovo impianto di smaltimento o recupero di rifiuti, devi presentare domanda alla Provincia che rilascia:\r\nl\'approvazione del progetto\r\nl\'autorizzazione alla realizzazione delle opere\r\nl\'autorizzazione all\'esercizio.', 5, 1),
(6, 'Perche\' deve essere fatta la raccolta differenziata dei rifiuti?', 'La raccolta differenziata deve essere fatta per:\r\nconsentire un piu\' facile recupero delle frazioni presenti nei rifiuti per le quali esista o possa essere promosso un mercato;\r\nridurre la quantita\' e la pericolosita\' dei rifiuti da avviare allo smaltimento finale, con maggiori garanzie di protezione ambientale;\r\ncontenere gli spazi necessari per le discariche e migliorare le caratteristiche degli effluenti: biogas e percolato;\r\nmigliorare il rendimento dei processi di trattamento termico finalizzati al recupero energetico;\r\nfavorire la produzione di compost di qualita\' con  residui organici non contaminati.', 2, 1),
(7, 'Che fine fanno i rifiuti della raccolta differenziata?', 'C\'e\' un solo modo per rispondere a queste domande: seguire il rifiuto nel suo percorso riabilitativo che inizia dal cassonetto.\r\nE\' una storia di rinascita, che la Regione Emilia-Romagna ha deciso di raccontare attraverso l\'indagine \"Chi li ha visti?\" in cui si ricostruisce il percorso di cio\' che viene gettato, e si testimoniano le fasi che lo portano il rifiuto a tornare ad essere il valore che non ha mai smesso di essere.\r\nE\' il primo di due video nel quale si ricostruisce il cammino dei rifiuti dal momento in cui vengono gettati nel cassonetto fino all\'impianto di digestione anaerobica e compostaggio e all\'impianto di differenziazione, mostrando cosa accade ai rifiuti, organici e non organici, attraverso una lavorazione tecnologicamente avanzata.', 2, 1),
(80, 'a chi devo fare domanda per realizzare un nuovo impianto di smaltimento dei rifiuti?', 'Per realizzare un nuovo impianto di smaltimento o recupero di rifiuti, devi presentare domanda alla Provincia che rilascerà l\'approvazione del progetto, l\'autorizzazione alla realizzazione delle opere e l\'autorizzazione all\'esercizio.', 5, 1),
(88, 'Domanda di una FAQ di Livello Quattro', 'Risposta della FAQ di Livello Quattro', 9, 1),
(84, 'Ogni quanto tempo passano a ritirare i miei rifiuti differenziati in campagna?', 'Deve informarsi tramite il suo comune riguardo agli orari ed alle date previste per la raccolta differenziata porta a porta presso abitazioni rurali', 20, 1),
(77, 'Che cosa faccio in caso di smarrimento, rottura o danneggiamento dei bidoni?', 'In caso di furto e di danneggiamento da atti vandalici o eventi atmosferici eccezionali sarà possibile ritirare gratuitamente i contenitori, presentando quelli danneggiati e la propria tessera elettronica, al magazzino Aprica di via Codignole 31/G presentando una apposita dichiarazione sostitutiva di certificazione. Scarica qui il modulo di certificazione. \r\n\r\nIn caso di smarrimento i bidoni possono essere acquistati al magazzino Aprica di via Codignole 31/G a un costo concordato con il Comune; clicca qui per i costi.\r\n\r\nIl magazzino è aperto dal lunedì al venerdì dalle ore 8 alle 13 e il sabato dalle 8 alle 12.', 2, 1),
(76, 'Che cosa significa sistema di raccolta domiciliare combinata?', 'Vetro, metalli, carta e plastica sono raccolti porta a porta, mentre i rifiuti indifferenziati e organici sono conferiti in cassonetti stradali a calotta apribili con una tessera elettronica personale.', 2, 1),
(78, 'Quando devo esporre i rifiuti che vengono raccolti \"porta a porta\"?', 'I rifiuti vanno esposti su strada, utilizzando i contenitori in dotazione, una volta alla settimana con le seguenti modalità: vetro e metalli dalle 18 alle 21, carta e plastica  dalle 18 alle 23. Nel centro città (zona rossa) andranno esposti dalle 19.30 alle 20. I contenitori devono essere ritirati entro le ore 9 del mattino seguente. Ogni zona ha un giorno di esposizione diverso. Per la zona gialla è lunedì, per l’azzurra  martedì, per la verde giovedì, per la viola venerdì e per la rossa mercoledì. Consulta il Calendario che ti viene consegnato insieme al kit oppure controlla sulla mappa dei servizi.', 2, 1),
(87, 'Cerco informazioni sui rifiuti speciali', 'I rifiuti speciali sono i rifiuti prodotti da industrie e aziende: si differenziano rispetto ai rifiuti urbani per il fatto che non vengono gestiti dalla pubblica amministrazione sulla base di contributi fiscali, ma vengono gestiti e smaltiti da un sistema di aziende private.', 1, 1),
(90, 'Sono un odontoiatra, a quali adempimenti devo attenermi in materia di rifiuti speciali?', 'Gli enti e professionisti, organizzati come impresa ai sensi dell\'art. 2238 del Codice Civile (per esempio cliniche, poliambulatori, ecc.), che erogano prestazioni sanitarie con relativa produzione di rifiuti pericolosi, sono tenuti al MUD e al SISTRI. Non vi sono invece tenuti i medici/odontoiatri/veterinari che svolgono l\'attivita\' in conto proprio o associati ad altri medici professionisti.', 3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_faq_alternative_question`
--

DROP TABLE IF EXISTS `faq_cb_faq_alternative_question`;
CREATE TABLE IF NOT EXISTS `faq_cb_faq_alternative_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alternative_question` varchar(255) NOT NULL,
  `fk_faq_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_faq_alternative_question_fk_faq_id_62776901` (`fk_faq_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_faq_alternative_question`
--

INSERT INTO `faq_cb_faq_alternative_question` (`id`, `alternative_question`, `fk_faq_id`) VALUES
(8, 'cosa devo fare con i rifiuti pericolosi prodotti dal mio studio medico?', 2),
(9, 'Sono un medico ma non ho un\'impresa. Cosa devo fare con i rifiuti pericolosi che produco?', 2),
(10, 'dirigo una clinica e sono interessato agli adempimenti a cui sottostare in materia di rifiuti', 2),
(11, 'Sono un veterinario, devo assolvere a particolari adempimenti in materia di rifiuti?', 2),
(12, 'Ho uno studio odontoiatrico, come posso smaltire i rifiuti speciali che produco?', 2),
(13, 'Cos\'è una frazione merceologica similare?', 65),
(14, 'Come si smaltiscono i rifiuti pericolosi?', 1),
(15, 'Come si smaltiscono i rifiuti speciali?', 1),
(17, 'Cosa vuol dire FMS?', 65),
(18, 'Cosa vuol dire frazione merceologica similare?', 65),
(19, 'che cos\'è fms ?\r\n', 65),
(21, 'Sono un medico dentista: dove posso smaltire i miei rifiuti speciali pericolosi?', 1),
(22, 'sono un dentista ed ho uno studio medico, cosa devo fare con i miei rifiuti medicinali ?', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_glossary`
--

DROP TABLE IF EXISTS `faq_cb_glossary`;
CREATE TABLE IF NOT EXISTS `faq_cb_glossary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry` varchar(255) NOT NULL,
  `definition` longtext NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_glossary_fk_user_id_5888e05f` (`fk_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_glossary`
--

INSERT INTO `faq_cb_glossary` (`id`, `entry`, `definition`, `fk_user_id`) VALUES
(1, 'ACQUE REFLUE', 'Liquidi provenienti da attività fisiologiche dell\'uomo (metabolismo), oppure da sue attività lavorative primarie (agricoltura e allevamento di bestiame) o secondarie (industria), che possono contenere sostanze organiche ed inorganiche nocive. Le acque reflue, se immesse senza alcun trattamento di depurazione (o con un trattamento incompleto o comunque inefficace) nell\'ambiente naturale, possono  contaminarlo con gravi conseguenze a carico degli esseri viventi che lo popolano. Dal punto di vista giuridico le acque reflue sono disciplinate dal D.Lgs 152/99 e  non soggette al Decreto \"Ronchi\".', 1),
(2, 'AMBITO TERRITORIALE OTTIMALE (ATO) ', 'Territorio corrispondente, salvo diversa disposizione stabilita con legge regionale, a quello provinciale. La Regione Marche è divisa in quattro ambiti: provincia di Pesaro-Urbino, provincia di Ancona, provincia di Macerata, provincia di Ascoli Piceno. Ogni ATO è autonomo nella gestione dei rifiuti urbani ed assimilati e persegue gli obiettivi della pianificazione regionale. L\'ATO si articola in Bacini di recupero/smaltimento e Aree di raccolta.', 1),
(3, 'ANALISI DEL CICLO DI VITA', 'Metodo di valutazione del carico ambientale relativo all\'intero ciclo di vita di un prodotto, di un processo o di un\'attività che consiste nell\'identificare e quantificare il consumo di energia, i materiali usati e i rifiuti prodotti e rilasciati nell\'ambiente. La valutazione include l\'intero ciclo di vita del prodotto, processo o attività, e comprende l\'estrazione e il trattamento delle materie prime, la fabbricazione, il trasporto, la distribuzione, l\'uso, il riuso, il riciclo e lo smaltimento finale.', 1),
(6, 'COMBUSTIBILE DERIVATO DA RIFIUTI (CDR)', 'Il CDR (Combustibile Derivato dai Rifiuti) – noto anche come RDF (Refuse Derived Fuel) classifica diverse frazioni di combustibili ricavabili dal trattamento di rifiuti urbani e rifiuti non urbani. Le frazioni comunemente utilizzate sono quella secca dei rifiuti urbani raccolti in maniera indifferenziata e gli scarti derivati dalla selezione dei rifiuti da raccolta differenziata, cioè la parte non destinata al recupero di materia. Inoltre, il CDR può contenere fino al 50% di rifiuti dichiarati assimilati ai fini di tale recupero come la plastiche non clorurate, i poliaccoppiati (cartoni per latte, vino, succhi di frutta), le gomme sintetiche non clorurate, le resine e le fibre artificiali e sintetiche e gli pneumatici fuori uso. L’aggiunta di questi materiali permette da un lato l’aumento del potere calorifico e, dall’altro l’aumento di sostanze pericolose nel CDR. Il processo di ottenimento del CDR prevede varie fasi a seconda della qualità del combustibile da ottenere e del materiale di partenza. Le principali operazioni sono: triturazione e riduzione dimensionale del materiale; deferrizzazione attraverso separatori elettromagnetici; eventuale deumidificazione e stabilizzazione della frazione organica; asportazione di metalli non ferrosi; asportazione di materiali inerti (vetro, ceramiche, sassi, sabbia, inerti); eventuale triturazione ulteriore per adattare la pezzatura in funzione della tecnologia di termoutilizzazione; eventuali essiccamento, addensamento o pellettizzazione, in base alla modalità di alimentazione degli impianti. Il Combustibile Derivato dai Rifiuti viene utilizzato principalmente in quegli impianti con finalità di recupero energetico come cementifici, inceneritori, centrali termoelettriche, impianti per la produzione della calce, impianti siderurgici, impianti di gassificazione e centrali termiche per teleriscaldamento.', 1),
(7, 'METALLI PESANTI', 'Elementi come cromo, manganese, rame, nichel, piombo, cadmio, zinco, mercurio e stagno provenienti da attività naturali (eruzioni vulcaniche, rilascio da minerali e rocce) o industriali (impianti di produzione di cloro ed altri composti chimici, fonderie, inceneritori, industrie del recupero dei metalli).', 1),
(8, 'PERICOLOSITA\' DI UN RIFIUTO', 'La pericolosità di un rifiuto viene determinata tramite analisi di laboratorio volte a verificare l’eventuale superamento di valori di soglia individuati dalle Direttive sulla classificazione, l’etichettatura e l’imballaggio delle sostanze pericolose.', 1),
(9, 'RAEE', 'Con RAEE si identificano i Rifiuti di Apparecchiature Elettroniche ed Elettriche e rappresentano la categoria di rifiuti in più rapido aumento a livello globale con un tasso di crescita del 3-5% annuo, tre volte superiore ai rifiuti normali. Sono considerati RAEE, televisori, videoregistratori, lettori DVD, telecamere, macchine fotografiche, radio, impianti stereo, lettori Mp3, Mp4, cuffie, computer, telefoni e cellulari, elettrodomestici per la casa e la persona (frigoriferi, lavatrici, forni, aspirapolvere, ferri da stiro, tostapane, frullatori, asciugacapelli, rasoi, orologi, climatizzatori, ventilatori, stufette elettriche, utensili elettrici (trapani, seghe, tagliaerba), giocattoli funzionanti con energia elettrica e strumenti musicali elettrici. In relazione ai RAEE, dal 18 giugno 2010, in Italia èattivo ufficialmente il sistema dell’ “uno contro uno” – ovvero usato contro il nuovo – sarà possibile smaltire le vecchie apparecchiature direttamente dai cittadini e a costo zero presso tutti i negozi.', 1),
(10, 'Rifiuti Speciali', 'A stabilire la tipologia di rifiuti speciali, suddivisi in rifiuti speciali non pericolosi e rifiuti speciali pericolisi – è il comma 3 dell’art.184 del Decreto Legislativo n.152/06, che li identifica in rifiuti da lavorazioni industriali, rifiuti da attività commerciali, rifiuti derivanti dalla attività di recupero e smaltimento, fanghi prodotti dalla potabilizzazione e da altri trattamenti delle acque e dalla depurazione delle acque reflue e da abbattimento di fumi, rifiuti derivanti da attività sanitarie, macchinari ed apparecchiature deteriorati ed obsoleti, veicoli a motore, rimorchi e simili fuori uso e loro parti. I rifiuti speciali pericolosi – o anche conosciuti come rifiuti tossico nocivi – sono quei rifiuti generati dalle attività produttive che contengono al loro interno una elevatissima concentrazione di sostanze inquinanti. Secondo il comma 5 dell’art.184 del Decreto Legislativo n.152/06 sono rifiuti pericolosi (vedasi SOSTANZA PERICOLOSA) quelli contrassegnati da apposito asterisco nell’elenco CER2002. In tale elenco alcune tipologie di rifiuti sono classificate come pericolose o non pericolose fin dall’origine, mentre per altre la pericolosità dipende dalla concentrazione di sostanze pericolose e/o metalli pesanti presenti nel rifiuto, come antimonio, arsenico, cadmio, cromo, rame, piombo, mercurio, nichel, selenio, tellurio, tallio e stagno: possono essere presenti sia puri che combinati con altri elementi in composti chimici.', 1),
(11, 'Rifiuti Urbani Pericolosi', 'I Rifiuti Urbani Pericolosi, conosciuti con la sigla RUP sono costituiti da tutta quella serie di rifiuti che, pur avendo un’origine civile, contengono al loro interno un’elevata dose di sostanze pericolose e che quindi devono essere gestiti diversamente dal flusso dei Rifiuti Urbani “normali”. È, infatti, obbligatorio organizzare la loro raccolta differenziata. Tra i RUP, i principali sono i medicinali scaduti e le pile.', 1),
(12, 'Stazione di trasferta', 'Meta intermedia dei rifiuti urbani prima di essere recuperati e/o separati per i vari utilizzi finali.', 1),
(13, 'INCENERITORE', 'Qualsiasi unità, fissa o mobile, utilizzata per l\'incenerimento di rifiuti (con o senza recupero del calore di combustione).', 1),
(14, 'Emissioni', 'qualsiasi sostanza solida, liquida o gassosa introdotta nell\'atmosfera che possa causare inquinamento atmosferico', 1),
(15, 'Aree di raccolta', '	\r\naggregazioni territoriali, costituite da un insieme di comuni interni all\'ATO o al bacino di recupero e smaltimento, finalizzate alla gestione il più possibile unitaria dei servizi di raccolta e trasporto rifiuti. Nell\'area di raccolta possono essere presenti più strutture per il conferimento differenziato (stazioni ecologiche) ciascuna collegata ad un’area attrezzata per il trattamento e la valorizzazione dei materiali recuperabili da conferire ai rispettivi consorzi.', 5),
(16, 'ECOPROGETTAZIONE', 'è un nuovo concetto che promuove la riduzione del consumo energetico delle apparecchiature elettriche, elettrodomestici e consimili. Sull\'apparecchio debbono essere messe in evidenza le informazioni sul suo impatto ambientale e sulla sua efficienza energetica permettendo così al consumatore di scegliere in maniera consapevole.', 5),
(17, 'Frazione umida', 'rifiuto organico putrescibile ad alto tenore di umidità, proveniente da raccolta differenziata o selezione o trattamento dei rifiuti urbani', 5),
(18, 'Frazione secca', 'rifiuto a bassa putrescibilità e a basso tenore di umidità proveniente da raccolta differenziata o selezione o trattamento dei rifiuti urbani, avente un rilevante contenuto energetico', 5),
(19, 'RIFIUTO DI CARTA', 'Si intendono come tali rifiuti, oltre alla semplice carta, anche i derivati come i cartoni. Non sono da conferire nella carta tutti i materiali non cellulosici, i contenitori di prodotti pericolosi, carte sintetiche, carte fotografiche e ogni tipo di carta, cartone e cartoncino che sia stato sporcato (ad esempio carta oleata, carta e cartone unti, fazzoletti di carta usati, tovaglioli di carta sporchi di cibo, carta plastificata, fustini del detersivo).\r\n\r\nModalità di conferimento: per la raccolta utilizzare sacchi in carta, scatole in cartone e non utilizzare sacchi in plastica.', 5),
(20, 'RIFIUTO DI VETRO', 'Descrizione\r\nRientrano in questa definizione tutti i tipi di bottiglia di vetro oltre a vasetti, bicchieri, vetri rotti e cristallo.\r\n\r\nModalità di conferimento\r\nTramite campana sul territorio comunale.', 5),
(21, 'PLASTICA E METALLI', 'Comprende la raccolta di materiali plastici e tutti i tipi di lattine e barattoli.\r\n\r\nModalità di conferimento\r\nPossono essere conferiti attraverso sacchi di plastica trasparenti che permettano il riconoscimento dei rifiuti dall\'esterno.', 5),
(22, 'RIFIUTO UMIDO', 'Questa categoria di rifiuti comprende tutti gli scarti alimentari e organici quali, per esempio: scarti di cucina, avanzi di cibo, alimenti avariati, gusci d\'uovo, scarti di verdure e frutta, fondi di caffè, filtri di tè, escrementi, lettiere per piccoli animali domestici, fiori recisi e piante domestiche, pane vecchio, salviette di carta umide, cenere.\r\n\r\nModalità di conferimento: conferire il rifiuto nel bidone verde all\'interno di sacchi biodegradabili o in mater-bi in prossimità della propria abitazione e comunque in luogo accessibile al mezzo di raccolta dopo le ore 21 del giorno precedente la raccolta prevista dal calendario.', 5),
(23, 'RIFIUTO SECCO', 'Descrizione\r\nPer secco si intendono i rifiuti indifferenziati che non possono altrimenti essere indifferenziati quali, ad esempio: cd, carta poliaccoppiata per alimenti, lampadine, grucce, prodotti assemblati che non possono essere separati.\r\n\r\nModalità di conferimento\r\nConferire il rifiuto all\'interno del bidone o in sacchi per la spazzatura in prossimità della propria abitazione e comunque in un luogo accessibile al mezzo di raccolta dopo le ore 21 del giorno precedente la raccolta prevista dal calendario.', 5),
(24, 'RIFIUTO VERDE', 'Si tratta prevalentemente dei rifiuti successivi alle operazioni di taglio dell’erba. La frazione verde non può, comunque, essere bruciata a distanze inferiori a 50 metri da abitazioni o strade.\r\n\r\nModalità di conferimento: la frazione verde conferita deve essere esente da materiali estranei non di natura vegetale, quali plastiche e rifiuti inerti. Il rifiuto verde proveniente dalla manutenzione di aree private viene intercettato separatamente secondo diverse modalità a seconda della possibilità dei servizi: si può procedere mediante consegna al punto di raccolta apposito come l\'ecocentro e/o il punto di conferimento oppure tramite ritiro su chiamata.', 5),
(25, 'FMS', 'Fms è l’acronimo di frazione merceologica similare e con essa ci si riferisce a quel materiale che, pur solidale merceologicamente con una frazione di rifiuto di imballaggio, non è, per l’appunto, imballaggio. Qualche esempio: la carta dei giornali e delle riviste è frazione merceologica similare in una raccolta di imballaggi in carta e cartone. Pentole e posate in acciaio o in alluminio sono frazioni merceologiche similari in una raccolta di imballaggi in acciaio o in alluminio. Tavoli e mobilio sono frazioni merceologiche similari in una raccolta di imballaggi in legno.', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_glossary_alternative_definition`
--

DROP TABLE IF EXISTS `faq_cb_glossary_alternative_definition`;
CREATE TABLE IF NOT EXISTS `faq_cb_glossary_alternative_definition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alternative_definition` varchar(255) NOT NULL,
  `fk_glossary_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_glossary_alternative_definition_fk_glossary_id_d3e83188` (`fk_glossary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_glossary_alternative_definition`
--

INSERT INTO `faq_cb_glossary_alternative_definition` (`id`, `alternative_definition`, `fk_glossary_id`) VALUES
(10, 'A.T.O.', 2),
(9, 'Acqua di scarico', 1),
(7, 'Acqua reflua', 1),
(8, 'Acque di scarico', 1),
(11, 'Ambiti territoriali ottimali', 2),
(12, 'analisi dei cicli di vita', 3),
(13, 'area di raccolta', 15),
(14, 'C.D.R.', 6),
(15, 'ecoprogettazioni', 16),
(16, 'emissione', 14),
(17, 'emissione solida', 14),
(18, 'emissioni solide', 14),
(19, 'emissione liquida', 14),
(20, 'emissioni liquide', 14),
(21, 'emissione gassosa', 14),
(22, 'emissioni gassose', 14),
(23, 'Frazioni secche', 18),
(24, 'Frazioni umide', 17),
(25, 'Inceneritori', 13),
(26, 'termovalorizzatore', 13),
(27, 'termovalorizzatori', 13),
(28, 'metallo pesante', 7),
(29, 'plastica e metallo', 21),
(30, 'materiale plastico', 21),
(31, 'raccolta differenziata plastica', 21),
(32, 'materiale metallico', 21),
(33, 'raccolta differenziata metallo', 21),
(34, 'raccolta differenziata metalli', 21),
(35, 'Rifiuti di Apparecchiature Elettroniche ed Elettriche', 9),
(36, 'rifiuto speciale', 10),
(37, 'Rifiuti di Apparecchiatura Elettronica ed Elettrica', 9),
(38, 'Rifiuto di Apparecchiatura Elettronica ed Elettrica', 9),
(39, 'rifiuto urbano pericoloso', 11),
(40, 'rifiuti di carta', 19),
(41, 'cosa va nella raccolta differenziata della carta?', 19),
(42, 'cosa si differenzia con la carta?', 19),
(43, 'rifiuti di vetro', 20),
(44, 'cosa si differenzia con il vetro?', 20),
(45, 'cosa va con il vetro?', 20),
(46, 'rifiuti secchi', 23),
(47, 'rifiuti umidi', 22),
(48, 'rifiuti verdi', 24),
(49, 'stazioni di trasferta', 12),
(50, 'cosa vuol dire RAEE?', 9),
(51, 'cosa si intende con RAEE?', 9),
(52, 'quali rifiuti fanno parte dei RAEE?', 9),
(53, 'quali rifiuti sono catalogati come raee?', 9),
(63, 'pericolosità dei rifiuti', 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_cb_not_answered_faq`
--

DROP TABLE IF EXISTS `faq_cb_not_answered_faq`;
CREATE TABLE IF NOT EXISTS `faq_cb_not_answered_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `asked_on` datetime(6) NOT NULL,
  `answered_on` datetime(6) DEFAULT NULL,
  `action_by_id` int(11) DEFAULT NULL,
  `deleted_on` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_cb_not_answered_faq_answered_by_id_4ffd9696` (`action_by_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `faq_cb_not_answered_faq`
--

INSERT INTO `faq_cb_not_answered_faq` (`id`, `question`, `asked_on`, `answered_on`, `action_by_id`, `deleted_on`) VALUES
(1, 'avete una mappa dei cassonetti più vicini a via Roma? ', '2017-08-17 07:44:31.187551', NULL, NULL, NULL),
(2, 'vorrei avere informazioni sulla gestione dei rifiuti', '2017-08-17 07:45:48.225392', NULL, 1, '2017-08-18 15:31:12.475440'),
(6, 'quanto fa due più due ?', '2017-08-17 10:42:53.243501', '2017-08-17 12:10:43.305157', 1, NULL),
(7, 'quanto fa due più due?', '2017-08-17 11:20:05.228181', '2017-08-17 13:09:35.243421', 5, NULL),
(8, 'asd asd asdf sdf awerwer wac', '2017-08-17 11:20:13.838816', NULL, 5, '2017-08-17 11:20:28.443263'),
(9, 'che tempo farà domani ?', '2017-08-17 13:13:12.488849', '2017-08-17 13:13:36.126331', 1, NULL),
(10, 'come stai ?', '2017-08-17 13:13:21.195448', NULL, 5, '2017-08-17 13:13:58.854559'),
(100, 'A quali adempimenti devo attenermi con i rifiuti prodotti dal mio ambulatorio medico? ', '2017-09-15 11:28:14.228528', NULL, NULL, NULL),
(99, 'Sono un medico, dove devo conferire i rifiuti del mio ambulatorio?', '2017-09-15 11:26:56.946296', NULL, NULL, NULL),
(98, 'Sono un meccanico, cosa devo fare con i rifiuti della mia officina?', '2017-09-15 11:26:40.375611', NULL, NULL, NULL),
(97, 'La plastica va conferita nei cassonetti gialli o verdi ?', '2017-09-15 11:25:09.127702', NULL, NULL, NULL),
(96, 'asd asda sd a', '2017-08-30 10:24:51.613132', NULL, 1, '2017-08-30 10:35:29.113501'),
(95, 'pericolosità dei rifiuti', '2017-08-25 15:20:58.633918', NULL, NULL, NULL),
(94, 'cosa mi sa dire riguardo la pericolosità dei rifiuti?', '2017-08-25 15:20:23.349836', NULL, NULL, NULL),
(93, 'cosa mi sa dire riguardo la pericolosità dei rifiuti?', '2017-08-25 15:18:24.820855', NULL, NULL, NULL),
(92, 'cosa mi sa dire riguardo la pericolosità dei rifiuti?', '2017-08-25 15:17:53.389948', NULL, NULL, NULL),
(91, 'pericolosità rifiuto', '2017-08-25 15:13:26.774065', NULL, NULL, NULL),
(90, 'pericolosità di un rifiuto', '2017-08-25 15:12:56.300030', NULL, NULL, NULL),
(89, 'cosa si intende per pericolosità di un rifiuto?', '2017-08-25 15:12:46.705919', NULL, NULL, NULL),
(88, 'Ho un\'impresa e devo smaltire rifiuti speciali e pericolosi (es. bombole di acetilene, calcinacci ecc..)', '2017-08-25 14:24:55.950419', NULL, NULL, NULL),
(87, 'sono un medico, a quali adempimenti devo sottostare in materia di rifiuti?', '2017-08-25 14:24:38.136803', NULL, NULL, NULL),
(86, 'cosa sono i rifiuti verdi?', '2017-08-25 14:24:19.799392', NULL, NULL, NULL),
(85, 'rifiuti verdi', '2017-08-25 14:24:13.901087', NULL, NULL, NULL),
(84, 'asd asd as d', '2017-08-25 14:23:57.903265', NULL, NULL, NULL),
(83, 'cosa vuol dire FMS ?', '2017-08-24 09:41:44.318327', NULL, NULL, NULL),
(81, 'cos\'è un rifiuto verde?', '2017-08-21 13:55:44.126089', NULL, NULL, NULL),
(82, 'fms', '2017-08-24 09:41:32.776259', NULL, NULL, NULL),
(80, 'cos\'è un rifiuto verde ?', '2017-08-21 07:41:09.867534', NULL, NULL, NULL),
(101, 'dove si differenzia la plastica?', '2017-11-21 09:28:29.185755', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
