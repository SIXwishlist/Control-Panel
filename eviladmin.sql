
-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_backup`
-- 

CREATE TABLE `eviladmin_backup` (
  `id` int(11) NOT NULL auto_increment,
  `typ` int(11) default NULL,
  `date` varchar(11) default NULL,
  `file` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `filesize` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_backup`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_container`
-- 

CREATE TABLE `eviladmin_container` (
  `id` smallint(3) unsigned NOT NULL default '0',
  `name` varchar(200) collate latin1_general_ci NOT NULL default '',
  `tpl` varchar(100) collate latin1_general_ci NOT NULL default 'standard_1',
  `typ` enum('in','out') collate latin1_general_ci NOT NULL default 'in',
  `area` smallint(5) unsigned NOT NULL default '1',
  KEY `container` (`tpl`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- 
-- Daten f�r Tabelle `eviladmin_container`
-- 

INSERT INTO `eviladmin_container` (`id`, `name`, `tpl`, `typ`, `area`) VALUES (10, 'forum', 'forum_template', 'out', 1),
(12, 'main', 'main_template', 'out', 1),
(13, 'misc', 'misc', 'out', 1),
(19, 'static', 'inner', 'in', 1),
(34, 'news', 'main_template', 'out', 1),
(56, 'maintenance', 'maintenance', 'out', 1);

-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_log`
-- 

CREATE TABLE `eviladmin_log` (
  `id` int(11) NOT NULL auto_increment,
  `member_id` int(11) default NULL,
  `target_id` int(11) default NULL,
  `date` varchar(11) default NULL,
  `action` int(11) default NULL,
  `what` varchar(100) default NULL,
  `module` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_log`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_members`
-- 

CREATE TABLE `eviladmin_members` (
  `id` int(11) NOT NULL auto_increment,
  `member` varchar(20) collate latin1_general_ci NOT NULL,
  `password` varchar(40) collate latin1_general_ci NOT NULL,
  `email` varchar(255) collate latin1_general_ci NOT NULL,
  `surname` varchar(100) collate latin1_general_ci NOT NULL,
  `name` varchar(100) collate latin1_general_ci NOT NULL,
  `country` varchar(40) collate latin1_general_ci NOT NULL,
  `regdate` varchar(11) collate latin1_general_ci NOT NULL default '0',
  `lastip` varchar(20) collate latin1_general_ci NOT NULL,
  `ugroup` int(11) default NULL,
  `status` int(1) default NULL,
  `user_lastonline` int(11) default NULL,
  `user_lastonline_temp` int(11) default NULL,
  `loggedin` int(1) NOT NULL default '0',
  `verify` varchar(30) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Daten f�r Tabelle `eviladmin_members`
-- 

INSERT INTO `eviladmin_members` (`id`, `member`, `password`, `email`, `surname`, `name`, `country`, `regdate`, `lastip`, `ugroup`, `status`, `user_lastonline`, `user_lastonline_temp`, `loggedin`, `verify`) VALUES (1, '1', '131cd1778c5c98e7bc4b1c7243c2537c', 'admin', '', 'admin', 'DE', '2010-01-28 ', '', 1, 1, 0, 0, 0, '1');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_members_notice`
-- 

CREATE TABLE `eviladmin_members_notice` (
  `id` int(11) NOT NULL auto_increment,
  `id_customer` int(11) default NULL,
  `id_author` int(11) default NULL,
  `id_completedby` int(11) default NULL,
  `subject` varchar(55) default NULL,
  `text` text,
  `date` varchar(11) default NULL,
  `prio` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_members_notice`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_permissions`
-- 

CREATE TABLE `eviladmin_permissions` (
  `group_id` int(11) NOT NULL default '0',
  `section_id` int(11) NOT NULL default '0',
  `permissions` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`group_id`,`section_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0;

-- 
-- Daten f�r Tabelle `eviladmin_permissions`
-- 

INSERT INTO `eviladmin_permissions` (`group_id`, `section_id`, `permissions`) VALUES (1, 1, 'alles'),
(5, 1, 'customerpanel');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_rootserver`
-- 

CREATE TABLE `eviladmin_rootserver` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `serverip` varchar(20) NOT NULL,
  `typ` int(1) NOT NULL default '0',
  `sname` varchar(20) NOT NULL,
  `spasswd` varchar(20) NOT NULL,
  `cpu` varchar(5) NOT NULL,
  `cpuinfo` varchar(20) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `board` varchar(20) NOT NULL,
  `hddisk` varchar(10) NOT NULL,
  `traffic` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_rootserver`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_settings`
-- 

CREATE TABLE `eviladmin_settings` (
  `id` int(11) NOT NULL auto_increment,
  `sitename` varchar(150) default NULL,
  `url` varchar(100) default NULL,
  `infoemail` varchar(100) default NULL,
  `firma` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `street` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `zipcode` varchar(10) default NULL,
  `country` varchar(50) default NULL,
  `taxnumber` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `prefix_firma` varchar(50) default NULL,
  `maintenance` varchar(1) default NULL,
  `theme` varchar(100) default NULL,
  `lang` varchar(5) default NULL,
  `session_timeout` varchar(11) default NULL,
  `version` varchar(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Daten f�r Tabelle `eviladmin_settings`
-- 

INSERT INTO `eviladmin_settings` (`id`, `sitename`, `url`, `infoemail`, `firma`, `name`, `street`, `city`, `zipcode`, `country`, `taxnumber`, `phone`, `prefix_firma`, `maintenance`, `theme`, `lang`, `session_timeout`, `version`) VALUES (1, 'teamspeak3.de - connect to the real world! - Teamspeak Server f�r dich!', 'teamspeak3.de', 'info@tld.de', 'evilDEV.de', '', '', '', '', 'DE', '', '', 'NEX', '0', 'eCP', 'de', '180', '0.9e');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_usergroup`
-- 

CREATE TABLE `eviladmin_usergroup` (
  `ugroup` mediumint(8) unsigned NOT NULL auto_increment,
  `groupname_single` varchar(75) collate latin1_general_ci NOT NULL default '',
  `groupname` varchar(100) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`ugroup`),
  KEY `groupid` (`ugroup`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci PACK_KEYS=0 AUTO_INCREMENT=7 ;

-- 
-- Daten f�r Tabelle `eviladmin_usergroup`
-- 

INSERT INTO `eviladmin_usergroup` (`ugroup`, `groupname_single`, `groupname`) VALUES (1, 'Administrator', 'Administratoren'),
(5, 'Kunde', 'Kunden');

-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_voiceserver`
-- 

CREATE TABLE `eviladmin_voiceserver` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(11) NOT NULL default '0',
  `masterid` int(11) NOT NULL default '0',
  `serverip` varchar(20) NOT NULL,
  `udpport` varchar(10) NOT NULL,
  `tcpport` varchar(10) NOT NULL,
  `httpport` varchar(20) NOT NULL,
  `typ` varchar(20) NOT NULL default '0',
  `slots` int(4) NOT NULL default '0',
  `auser` varchar(40) default NULL,
  `apasswd` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_voiceserver`
-- 


-- --------------------------------------------------------

-- 
-- Tabellenstruktur f�r Tabelle `eviladmin_voiceserver_master`
-- 

CREATE TABLE `eviladmin_voiceserver_master` (
  `id` int(11) NOT NULL auto_increment,
  `rootserverid` int(11) NOT NULL default '0',
  `serverip` varchar(20) NOT NULL,
  `tcpport` varchar(10) NOT NULL,
  `httpport` varchar(20) NOT NULL default '0',
  `sadmin` varchar(255) NOT NULL,
  `spasswd` varchar(255) NOT NULL,
  `typ` varchar(3) default NULL,
  `active` char(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Daten f�r Tabelle `eviladmin_voiceserver_master`
-- 

