/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : dayz_origins

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2013-09-02 21:52:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adm_objects`
-- ----------------------------
DROP TABLE IF EXISTS `adm_objects`;
CREATE TABLE `adm_objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type` varchar(10) NOT NULL,
  `subtype` varchar(20) NOT NULL,
  `transport_max_weapons` mediumint(5) NOT NULL,
  `transport_max_magazines` smallint(5) NOT NULL,
  `transport_max_backpacks` tinyint(2) NOT NULL,
  `cargo` tinyint(2) NOT NULL,
  `slots` tinyint(2) NOT NULL,
  `icon_type` varchar(20) NOT NULL,
  `rmod_supported` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - not checked, 1 -supported, 2 -not supported',
  `allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 - allowed, 0 - not allowed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_name` (`class_name`)
) ENGINE=MyISAM AUTO_INCREMENT=813 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of adm_objects
-- ----------------------------
INSERT INTO `adm_objects` VALUES ('1', 'An2_1_TK_CIV_EP1', 'An-2 (Aeroshrot)', 'vehicle', 'Air', '3', '20', '0', '15', '0', 'aircraftsmall', '0', '0');
INSERT INTO `adm_objects` VALUES ('2', 'An2_2_TK_CIV_EP1', 'An-2 (TakAir)', 'vehicle', 'Air', '3', '20', '0', '15', '0', 'aircraftsmall', '0', '0');
INSERT INTO `adm_objects` VALUES ('3', 'Mi17_Civilian', 'Mi-17 (Civilian)', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('4', 'ParachuteC', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('5', 'An2_TK_EP1', 'An-2', 'vehicle', 'Air', '3', '20', '0', '15', '0', 'aircraftsmall', '0', '0');
INSERT INTO `adm_objects` VALUES ('6', 'L39_TK_EP1', 'L-39ZA', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'Air', '0', '0');
INSERT INTO `adm_objects` VALUES ('7', 'TentStorage', 'Tent Storage', 'vehicle', 'deployable', '10', '50', '5', '0', '0', 'tent', '0', '0');
INSERT INTO `adm_objects` VALUES ('8', 'Mi17_TK_EP1', 'Mi-8', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('9', 'Mi24_D_TK_EP1', 'Mi-24D', 'vehicle', 'Air', '30', '150', '10', '8', '0', 'helicopter', '2', '0');
INSERT INTO `adm_objects` VALUES ('10', 'Parachute_TK_EP1', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('11', 'ParachuteBigEast_EP1', 'Cargo parachute (Large)', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('12', 'ParachuteMediumEast_EP1', 'Cargo parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('13', 'Su25_TK_EP1', 'Su-25', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('14', 'UH1H_TK_EP1', 'UH-1H', 'vehicle', 'Air', '3', '20', '1', '5', '0', 'helicopter', '2', '0');
INSERT INTO `adm_objects` VALUES ('15', 'Mi17_Ins', 'Mi-8MT', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('16', 'Su25_Ins', 'Su-25', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('17', 'Ka52', 'Ka-52', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('18', 'Ka52Black', 'Ka-52 (black)', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('19', 'Mi17_rockets_RU', 'Mi-8MTV-3', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('20', 'Mi24_P', 'Mi-24P', 'vehicle', 'Air', '30', '150', '10', '8', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('21', 'Mi24_V', 'Mi-24V', 'vehicle', 'Air', '30', '150', '10', '8', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('22', 'ParachuteBigEast', 'Cargo parachute (Large)', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('23', 'ParachuteEast', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('24', 'ParachuteMediumEast', 'Cargo parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('25', 'Pchela1T', 'Pchela-1T', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('26', 'Su34', 'Su-34', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('27', 'Su39', 'Su-25', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('28', 'Parachute_TK_GUE_EP1', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('29', 'UH1H_TK_GUE_EP1', 'UH-1H', 'vehicle', 'Air', '3', '20', '1', '5', '0', 'helicopter', '2', '0');
INSERT INTO `adm_objects` VALUES ('30', 'Mi17_UN_CDF_EP1', 'Mi-8', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '2', '0');
INSERT INTO `adm_objects` VALUES ('31', 'ParachuteG', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('32', 'CruiseMissile1', 'Cruise Missile', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('33', 'AW159_Lynx_BAF', 'Wildcat AH11', 'vehicle', 'Air', '18', '180', '5', '8', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('34', 'BAF_Apache_AH1_D', 'Apache AH1', 'vehicle', 'Air', '18', '180', '1', '0', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('35', 'BAF_Merlin_HC3_D', 'Merlin HC3', 'vehicle', 'Air', '18', '180', '10', '17', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('36', 'CH_47F_BAF', 'Chinook HC4', 'vehicle', 'Air', '36', '360', '10', '24', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('37', 'Mi171Sh_CZ_EP1', 'Mi-171Sh', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('38', 'Mi171Sh_rockets_CZ_EP1', 'Mi-171Sh (rockets)', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('39', 'A10_US_EP1', 'A-10', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'airplanearmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('40', 'AH64D_EP1', 'AH-64D', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('41', 'AH6J_EP1', 'AH-6J', 'vehicle', 'Air', '3', '20', '1', '1', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('42', 'AH6X_EP1', 'AH-6X', 'vehicle', 'Air', '3', '20', '5', '1', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('43', 'C130J_US_EP1', 'C-130J', 'vehicle', 'Air', '3', '20', '0', '25', '0', 'kingair', '0', '0');
INSERT INTO `adm_objects` VALUES ('44', 'CH_47F_EP1', 'CH-47F', 'vehicle', 'Air', '3', '20', '10', '24', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('45', 'MH6J_EP1', 'MH-6J', 'vehicle', 'Air', '3', '20', '1', '5', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('46', 'MQ9PredatorB_US_EP1', 'MQ-9', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'airplanearmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('47', 'Parachute_US_EP1', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('48', 'ParachuteBigWest_EP1', 'Cargo parachute (Large)', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('49', 'ParachuteMediumWest_EP1', 'Cargo parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('50', 'UH60M_EP1', 'UH-60M', 'vehicle', 'Air', '3', '20', '10', '13', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('51', 'Mi17_CDF', 'Mi-17', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('52', 'Mi24_D', 'Mi-24D', 'vehicle', 'Air', '30', '150', '10', '8', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('53', 'Su25_CDF', 'Su-25', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('54', 'Steerable_Parachute_EP1', 'Steerable parachute', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('55', 'A10', 'A-10', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'airplanearmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('56', 'AH1Z', 'AH-1Z', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('57', 'AH64D', 'AH-64D', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('58', 'AH64D_Sidewinders', 'AH-64D', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('59', 'AV8B', 'AV-8B (LGB)', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('60', 'AV8B2', 'AV-8B', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('61', 'C130J', 'C-130J', 'vehicle', 'Air', '3', '20', '0', '25', '0', 'kingair', '0', '0');
INSERT INTO `adm_objects` VALUES ('62', 'CruiseMissile2', 'Cruise Missile 2', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('63', 'F35B', 'F-35B', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'jetfighter', '0', '0');
INSERT INTO `adm_objects` VALUES ('64', 'MH60S', 'MH-60S', 'vehicle', 'Air', '30', '150', '10', '13', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('65', 'MQ9PredatorB', 'MQ-9', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'airplanearmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('66', 'MQ9PredatorB_campaign', 'MQ-9', 'vehicle', 'Air', '3', '20', '0', '0', '0', 'airplanearmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('67', 'MV22', 'MV-22', 'vehicle', 'Air', '3', '20', '0', '24', '0', 'airplane', '2', '0');
INSERT INTO `adm_objects` VALUES ('68', 'Parachute', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('69', 'ParachuteBigWest', 'Cargo parachute (Large)', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('70', 'ParachuteMediumWest', 'Cargo parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('71', 'ParachuteWest', 'Parachute', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'other', '0', '0');
INSERT INTO `adm_objects` VALUES ('72', 'UH1Y', 'UH-1Y', 'vehicle', 'Air', '30', '150', '1', '7', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('73', 'UH1Y_cutscene', 'UH-1Y', 'vehicle', 'Air', '30', '150', '1', '7', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('74', 'BAF_BasicAmmunitionBox', 'BAF Basic Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('75', 'BAF_BasicWeapons', 'BAF Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('76', 'BAF_IEDBox', 'Explosives Stash', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('77', 'BAF_Launchers', 'BAF Launchers', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('78', 'BAF_OrdnanceBox', 'BAF Ordnance', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('79', 'BAF_VehicleBox', 'BAF Vehicle Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('80', 'CZBasicWeapons_EP1', 'CZ Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('81', 'GERBasicWeapons_EP1', 'GER Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('82', 'GuerillaCacheBox', 'Guerilla Cache', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('83', 'GuerillaCacheBox_EP1', 'Guerilla Cache', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('84', 'Gunrack1', 'Gun rack', 'vehicle', 'Ammo', '20', '100', '0', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('85', 'Gunrack2', 'Gun rack (rifles)', 'vehicle', 'Ammo', '20', '100', '0', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('86', 'GunrackTK_EP1', 'Gun rack (TK)', 'vehicle', 'Ammo', '20', '100', '0', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('87', 'GunrackUS_EP1', 'Gun rack (US)', 'vehicle', 'Ammo', '20', '100', '0', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('88', 'LocalBasicAmmunitionBox', 'Local Basic Ammunition', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('89', 'LocalBasicWeaponsBox', 'Local Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('90', 'ReammoBox_EP1', 'Ammo Crates', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('91', 'RUBasicAmmunitionBox', 'RU Basic Ammunition', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('92', 'RUBasicWeaponsBox', 'RU Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('93', 'RULaunchersBox', 'RU Launchers', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('94', 'RUOrdnanceBox', 'RU Ordnance', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('95', 'RUSpecialWeaponsBox', 'RU Special Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('96', 'RUVehicleBox', 'RU Vehicle', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('97', 'SpecialWeaponsBox', 'Special Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('98', 'TKBasicAmmunitionBox_EP1', 'TK Basic Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('99', 'TKBasicWeapons_EP1', 'TK Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('100', 'TKLaunchers_EP1', 'TK Launchers', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('101', 'TKOrdnanceBox_EP1', 'TK Ordnance', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('102', 'TKSpecialWeapons_EP1', 'TK Special Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('103', 'TKVehicleBox_EP1', 'TK Vehicle Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('104', 'UNBasicAmmunitionBox_EP1', 'UN Basic Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('105', 'UNBasicWeapons_EP1', 'UN Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('106', 'USBasicAmmunitionBox', 'US Basic Ammunition', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('107', 'USBasicAmmunitionBox_EP1', 'US Army Basic Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('108', 'USBasicWeapons_EP1', 'US Army Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('109', 'USBasicWeaponsBox', 'US Basic Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('110', 'USLaunchers_EP1', 'US Army Launchers', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('111', 'USLaunchersBox', 'US Launchers', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('112', 'USOrdnanceBox', 'US Ordnance', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('113', 'USOrdnanceBox_EP1', 'US Army Ordnance', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('114', 'USSpecialWeapons_EP1', 'US Army Special Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('115', 'USSpecialWeaponsBox', 'US Special Weapons', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('116', 'USVehicleBox', 'US Vehicle Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('117', 'USVehicleBox_EP1', 'US Army Vehicle Ammo', 'vehicle', 'Ammo', '5000', '20000', '1', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('118', '1', 'WeaponHolder', 'vehicle', 'Ammo', '1', '0', '0', '0', '0', 'Ammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('119', 'BMP2_HQ_TK_EP1', 'BMP-2 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('120', 'BMP2_TK_EP1', 'BMP-2', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('121', 'BRDM2_ATGM_TK_EP1', 'BRDM-2 (ATGM)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('122', 'BRDM2_TK_EP1', 'BRDM-2', 'vehicle', 'Armored', '10', '100', '5', '3', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('123', 'BTR60_TK_EP1', 'BTR-60', 'vehicle', 'Armored', '10', '100', '5', '8', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('124', 'M113_TK_EP1', 'M113', 'vehicle', 'Armored', '20', '100', '0', '11', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('125', 'T34_TK_EP1', 'T-34', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('126', 'T55_TK_EP1', 'T-55', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('127', 'T72_TK_EP1', 'T-72', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('128', 'ZSU_TK_EP1', 'ZSU-23 Shilka', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('129', 'BTR40_MG_TK_INS_EP1', 'BTR-40 (DshKM)', 'vehicle', 'Armored', '10', '50', '5', '6', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('130', 'BTR40_TK_INS_EP1', 'BTR-40', 'vehicle', 'Armored', '10', '50', '5', '6', '0', 'Armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('131', 'BMP2_HQ_INS', 'BMP-2 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('132', 'BMP2_INS', 'BMP-2', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('133', 'BRDM2_ATGM_INS', 'BRDM-2 (ATGM)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'Armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('134', 'BRDM2_INS', 'BRDM-2', 'vehicle', 'Armored', '10', '100', '5', '3', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('135', 'T72_INS', 'T-72', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('136', 'ZSU_INS', 'ZSU-23 Shilka', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('137', '2S6M_Tunguska', '2S6M Tunguska', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('138', 'BMP3', 'BMP-3', 'vehicle', 'Armored', '10', '100', '5', '5', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('139', 'BTR90', 'BTR-90', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'wheeledarmed', '2', '0');
INSERT INTO `adm_objects` VALUES ('140', 'BTR90_HQ', 'BTR-90 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'wheeledarmed', '2', '0');
INSERT INTO `adm_objects` VALUES ('141', 'GAZ_Vodnik', 'Vodnik (2xPK)', 'vehicle', 'Armored', '10', '50', '5', '10', '0', 'Armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('142', 'GAZ_Vodnik_HMG', 'Vodnik (BPPU)', 'vehicle', 'Armored', '10', '50', '5', '2', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('143', 'T72_RU', 'T-72', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('144', 'T90', 'T-90', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('145', 'BRDM2_HQ_TK_GUE_EP1', 'BRDM-2 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('146', 'BRDM2_TK_GUE_EP1', 'BRDM-2', 'vehicle', 'Armored', '10', '100', '5', '3', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('147', 'BTR40_MG_TK_GUE_EP1', 'BTR-40 (DshKM)', 'vehicle', 'Armored', '10', '50', '5', '6', '0', 'wheeledarmed', '2', '0');
INSERT INTO `adm_objects` VALUES ('148', 'BTR40_TK_GUE_EP1', 'BTR-40', 'vehicle', 'Armored', '10', '50', '5', '6', '0', 'Armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('149', 'T34_TK_GUE_EP1', 'T-34', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('150', 'T55_TK_GUE_EP1', 'T-55', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('151', 'BMP2_UN_EP1', 'BMP-2', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('152', 'M113_UN_EP1', 'M113', 'vehicle', 'Armored', '20', '100', '0', '11', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('153', 'BMP2_Gue', 'BMP-2', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('154', 'BRDM2_Gue', 'BRDM-2', 'vehicle', 'Armored', '10', '100', '5', '3', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('155', 'BRDM2_HQ_Gue', 'BRDM-2 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'Armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('156', 'T34', 'T-34', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('157', 'T72_Gue', 'T-72', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('158', 'M1126_ICV_M2_EP1', 'Stryker ICV (M2)', 'vehicle', 'Armored', '10', '50', '5', '9', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('159', 'M1126_ICV_mk19_EP1', 'Stryker ICV (Mk19)', 'vehicle', 'Armored', '10', '50', '5', '9', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('160', 'M1128_MGS_EP1', 'Stryker MGS', 'vehicle', 'Armored', '10', '50', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('161', 'M1129_MC_EP1', 'Stryker MC', 'vehicle', 'Armored', '10', '50', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('162', 'M1130_CV_EP1', 'Stryker CV', 'vehicle', 'Armored', '10', '50', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('163', 'M1135_ATGMV_EP1', 'Stryker (TOW)', 'vehicle', 'Armored', '10', '50', '5', '0', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('164', 'M1A1_US_DES_EP1', 'M1A1', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('165', 'M1A2_US_TUSK_MG_EP1', 'M1A2 TUSK', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('166', 'M2A2_EP1', 'M2A2 Bradley IFV', 'vehicle', 'Armored', '10', '100', '0', '6', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('167', 'M2A3_EP1', 'M2A3 ERA Bradley IFV', 'vehicle', 'Armored', '10', '100', '0', '6', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('168', 'M6_EP1', 'M6 Linebacker', 'vehicle', 'Armored', '10', '100', '0', '6', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('169', 'MLRS_DES_EP1', 'M270 MLRS', 'vehicle', 'Armored', '10', '100', '0', '1', '0', 'tracked', '0', '0');
INSERT INTO `adm_objects` VALUES ('170', 'BMP2_CDF', 'BMP-2', 'vehicle', 'Armored', '10', '100', '5', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('171', 'BMP2_HQ_CDF', 'BMP-2 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('172', 'BRDM2_ATGM_CDF', 'BRDM-2 (ATGM)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('173', 'BRDM2_CDF', 'BRDM-2', 'vehicle', 'Armored', '10', '100', '5', '3', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('174', 'T72_CDF', 'T-72', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('175', 'ZSU_CDF', 'ZSU-23 Shilka', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('176', 'AAV', 'AAVP7A1', 'vehicle', 'Armored', '10', '100', '5', '19', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('177', 'AAV_cutscene', 'AAVP7A1', 'vehicle', 'Armored', '10', '100', '5', '4', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('178', 'LAV25', 'LAV-25', 'vehicle', 'Armored', '10', '100', '5', '6', '0', 'wheeledarmed', '1', '0');
INSERT INTO `adm_objects` VALUES ('179', 'LAV25_HQ', 'LAV-25 (HQ)', 'vehicle', 'Armored', '10', '100', '5', '0', '0', 'wheeledarmed', '2', '0');
INSERT INTO `adm_objects` VALUES ('180', 'M1A1', 'M1A1', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('181', 'M1A2_TUSK_MG', 'M1A2 TUSK', 'vehicle', 'Armored', '10', '100', '0', '0', '0', 'tank', '0', '0');
INSERT INTO `adm_objects` VALUES ('182', 'MLRS', 'M270 MLRS', 'vehicle', 'Armored', '10', '100', '0', '1', '0', 'tracked', '0', '0');
INSERT INTO `adm_objects` VALUES ('183', 'BAF_FV510_D', 'FV510 Warrior 2', 'vehicle', 'ArmouredD', '22', '500', '0', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('184', 'BAF_FV510_W', 'FV510 Warrior 2', 'vehicle', 'ArmouredW', '22', '500', '0', '7', '0', 'trackedarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('185', 'BAF_AssaultPack_ARAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('186', 'BAF_AssaultPack_ATAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('187', 'BAF_AssaultPack_FAC', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('188', 'BAF_AssaultPack_HAAAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('189', 'BAF_AssaultPack_HATAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('190', 'BAF_AssaultPack_LRRAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('191', 'BAF_AssaultPack_MGAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('192', 'BAF_AssaultPack_RifleAmmo', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('193', 'BAF_AssaultPack_Special', 'British Assault Pack', 'vehicle', 'Backpacks', '1', '13', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('194', 'CZ_Backpack_Ammo_EP1', 'Czech Backpack', 'vehicle', 'Backpacks', '1', '14', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('195', 'CZ_Backpack_AmmoMG_EP1', 'Czech Backpack', 'vehicle', 'Backpacks', '1', '14', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('196', 'CZ_Backpack_EP1', 'Czech Backpack', 'vehicle', 'Backpacks', '1', '14', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('197', 'CZ_Backpack_Specops_EP1', 'Czech Backpack', 'vehicle', 'Backpacks', '1', '14', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('199', 'CZ_VestPouch_M4_EP1', 'Czech Vest Pouch', 'vehicle', 'Backpacks', '0', '6', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('200', 'CZ_VestPouch_Sa58_EP1', 'Czech Vest Pouch', 'vehicle', 'Backpacks', '0', '6', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('201', 'DE_Backpack_Specops_EP1', 'DE Backpack', 'vehicle', 'Backpacks', '1', '14', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('202', 'ftmch_Backpack_Specops_AK', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('203', 'ftmch_Backpack_Specops_AK74', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('204', 'ftmch_Backpack_Specops_STANAG', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('205', 'TK_ALICE_Pack_AmmoMG_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('206', 'TK_ALICE_Pack_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('207', 'TK_ALICE_Pack_Explosives_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('208', 'TK_Assault_Pack_EP1', 'Assault Pack (khaki)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('209', 'TK_Assault_Pack_RPK_EP1', 'Assault Pack (khaki)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('210', 'TK_RPG_Backpack_EP1', 'RPG Pack', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('211', 'TKA_ALICE_Pack_Ammo_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('212', 'TKA_Assault_Pack_Ammo_EP1', 'Assault Pack (khaki)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('213', 'TKG_ALICE_Pack_AmmoAK47_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('214', 'TKG_ALICE_Pack_AmmoAK74_EP1', 'ALICE Pack', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('215', 'US_Assault_Pack_Ammo_EP1', 'Assault Pack (ACU)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('216', 'US_Assault_Pack_AmmoSAW_EP1', 'Assault Pack (ACU)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('217', 'US_Assault_Pack_AT_EP1', 'Assault Pack (ACU)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('218', 'US_Assault_Pack_EP1', 'Assault Pack (ACU)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('219', 'US_Assault_Pack_Explosives_EP1', 'Assault Pack (ACU)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('220', 'US_Backpack_AmmoMG_EP1', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('221', 'US_Backpack_AT_EP1', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('222', 'US_Backpack_EP1', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('223', 'US_Backpack_Specops_EP1', 'Backpack (coyote)', 'vehicle', 'Backpacks', '1', '12', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('224', 'US_Patrol_Pack_Ammo_EP1', 'Patrol Pack (coyote)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('225', 'US_Patrol_Pack_EP1', 'Patrol Pack (coyote)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('226', 'US_Patrol_Pack_Specops_EP1', 'Patrol Pack (coyote)', 'vehicle', 'Backpacks', '0', '8', '1', '0', '0', 'Backpacks', '0', '0');
INSERT INTO `adm_objects` VALUES ('227', 'hilux1_civil_3_open_EP1', 'Pickup', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('228', 'Ikarus_TK_CIV_EP1', 'Bus', 'vehicle', 'Car', '10', '50', '2', '23', '0', 'bus', '0', '0');
INSERT INTO `adm_objects` VALUES ('229', 'Lada1_TK_CIV_EP1', 'Lada', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '1', '0');
INSERT INTO `adm_objects` VALUES ('230', 'Lada2_TK_CIV_EP1', 'Lada (decorated)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('231', 'LandRover_TK_CIV_EP1', 'Military Offroad', 'vehicle', 'Car', '10', '50', '2', '7', '0', 'jeep_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('232', 'Old_moto_TK_Civ_EP1', 'Old moto', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorbike', '0', '0');
INSERT INTO `adm_objects` VALUES ('233', 'S1203_TK_CIV_EP1', 'S1203', 'vehicle', 'Car', '10', '50', '2', '5', '0', 'minivan', '0', '0');
INSERT INTO `adm_objects` VALUES ('234', 'SUV_TK_CIV_EP1', 'SUV', 'vehicle', 'Car', '10', '50', '2', '5', '0', 'jeep_sport', '0', '0');
INSERT INTO `adm_objects` VALUES ('235', 'TT650_TK_CIV_EP1', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('236', 'UAZ_Unarmed_TK_CIV_EP1', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('237', 'Ural_TK_CIV_EP1', 'Ural', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('238', 'V3S_Open_TK_CIV_EP1', 'V3S Open', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_open', '0', '0');
INSERT INTO `adm_objects` VALUES ('239', 'Volha_1_TK_CIV_EP1', 'GAZ (blue)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('240', 'Volha_2_TK_CIV_EP1', 'GAZ (grey)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('241', 'VolhaLimo_TK_CIV_EP1', 'GAZ Limo', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('242', 'car_hatchback', 'Old hatchback', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('243', 'car_sedan', 'Sedan', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('244', 'datsun1_civil_1_open', 'Pick-Up', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('245', 'datsun1_civil_2_covered', 'Pick-Up (Covered)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('246', 'datsun1_civil_3_open', 'Pick-Up (Tube frame)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('247', 'hilux1_civil_1_open', 'Offroad (tan)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('248', 'hilux1_civil_2_covered', 'Offroad (red)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('249', 'hilux1_civil_3_open', 'Offroad (white)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'pickup', '0', '0');
INSERT INTO `adm_objects` VALUES ('250', 'Ikarus', 'Bus', 'vehicle', 'Car', '10', '50', '2', '23', '0', 'bus', '0', '0');
INSERT INTO `adm_objects` VALUES ('251', 'Lada1', 'VAZ (White)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('252', 'Lada2', 'VAZ (Red)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('253', 'LadaLM', 'VAZ (Militia)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '1', '0');
INSERT INTO `adm_objects` VALUES ('254', 'Skoda', 'Car (white)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('255', 'SkodaBlue', 'Car (blue)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('256', 'SkodaGreen', 'Car (green)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('257', 'SkodaRed', 'Car (red)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('258', 'tractorOld', 'Tractor', 'vehicle', 'Car', '10', '50', '2', '0', '0', 'tractor', '0', '0');
INSERT INTO `adm_objects` VALUES ('259', 'TT650_Civ', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('260', 'UralCivil', 'Ural (Civil)', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('261', 'UralCivil2', 'Ural (Civil 2)', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('262', 'V3S_Civ', 'V3S', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_open', '0', '0');
INSERT INTO `adm_objects` VALUES ('263', 'VWGolf', 'Hatchback', 'vehicle', 'Car', '10', '50', '2', '4', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('264', 'FoldChair_with_Cargo', 'Folding Chair', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('265', 'GRAD_TK_EP1', 'BM-21 Grad', 'vehicle', 'Car', '50', '200', '8', '1', '0', 'wheeledarmed', '0', '0');
INSERT INTO `adm_objects` VALUES ('266', 'LandRover_MG_TK_EP1', 'Military Offroad (M2)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_open', '2', '0');
INSERT INTO `adm_objects` VALUES ('267', 'LandRover_SPG9_TK_EP1', 'Military Offroad (SPG9)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_open', '2', '0');
INSERT INTO `adm_objects` VALUES ('268', 'MAZ_543_SCUD_TK_EP1', '9P117 Scud-B', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'Armored', '0', '0');
INSERT INTO `adm_objects` VALUES ('269', 'SUV_TK_EP1', 'SUV', 'vehicle', 'Car', '10', '50', '2', '5', '0', 'jeep_sport', '0', '0');
INSERT INTO `adm_objects` VALUES ('270', 'TT650_TK_EP1', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('271', 'UAZ_AGS30_TK_EP1', 'UAZ (AGS-30)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('272', 'UAZ_MG_TK_EP1', 'UAZ (DShKM)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('273', 'UAZ_Unarmed_TK_EP1', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_open', '0', '0');
INSERT INTO `adm_objects` VALUES ('274', 'Ural_ZU23_TK_EP1', 'Ural (ZU-23)', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'truck_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('275', 'V3S_Open_TK_EP1', 'V3S Open', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_open', '0', '0');
INSERT INTO `adm_objects` VALUES ('276', 'V3S_TK_EP1', 'V3S', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('277', 'LandRover_MG_TK_INS_EP1', 'Military Offroad (M2)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('278', 'LandRover_SPG9_TK_INS_EP1', 'Military Offroad (SPG9)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('279', 'GRAD_INS', 'BM-21 Grad', 'vehicle', 'Car', '50', '200', '8', '1', '0', 'truck_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('280', 'Offroad_DSHKM_INS', 'Offroad (DShKM)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('281', 'Pickup_PK_INS', 'Pickup (PK)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('282', 'TT650_Ins', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('283', 'UAZ_AGS30_INS', 'UAZ (AGS-30)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('284', 'UAZ_INS', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('285', 'UAZ_MG_INS', 'UAZ (DShKM)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('286', 'UAZ_SPG9_INS', 'UAZ (SPG-9)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('287', 'Ural_INS', 'Ural', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('288', 'Ural_ZU23_INS', 'Ural (ZU-23)', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'truck_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('289', 'UralOpen_INS', 'Ural (Open)', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_open', '1', '0');
INSERT INTO `adm_objects` VALUES ('290', 'GRAD_RU', 'BM-21 Grad', 'vehicle', 'Car', '50', '200', '8', '1', '0', 'truck_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('291', 'Kamaz', 'Utility Truck', 'vehicle', 'Car', '50', '200', '8', '12', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('292', 'KamazOpen', 'Utility Truck (Open)', 'vehicle', 'Car', '50', '200', '8', '12', '0', 'truck_open', '1', '0');
INSERT INTO `adm_objects` VALUES ('293', 'UAZ_AGS30_RU', 'UAZ (AGS-30)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('294', 'UAZ_RU', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('295', 'Offroad_DSHKM_TK_GUE_EP1', 'Offroad (DShKM)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('296', 'Offroad_SPG9_TK_GUE_EP1', 'Offroad (SPG-9)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('297', 'Pickup_PK_TK_GUE_EP1', 'Pickup (PK)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('298', 'Ural_ZU23_TK_GUE_EP1', 'Ural (ZU-23)', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'truck_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('299', 'V3S_TK_GUE_EP1', 'V3S', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('300', 'SUV_UN_EP1', 'SUV', 'vehicle', 'Car', '10', '50', '2', '5', '0', 'jeep_sport', '0', '0');
INSERT INTO `adm_objects` VALUES ('301', 'UAZ_Unarmed_UN_EP1', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('302', 'Ural_UN_EP1', 'Ural', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('303', 'Offroad_DSHKM_Gue', 'Offroad (DShKM)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('304', 'Offroad_SPG9_Gue', 'Offroad (SPG-9)', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('305', 'Pickup_PK_GUE', 'Pickup (PK)', 'vehicle', 'Car', '10', '50', '2', '3', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('306', 'TT650_Gue', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('307', 'Ural_ZU23_Gue', 'Ural (ZU-23)', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'truck_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('308', 'V3S_Gue', 'V3S', 'vehicle', 'Car', '50', '200', '8', '13', '0', 'truck_open', '0', '0');
INSERT INTO `adm_objects` VALUES ('309', 'SUV_PMC_BAF', 'PMC SUV', 'vehicle', 'Car', '10', '50', '2', '5', '0', 'jeep_sport', '0', '0');
INSERT INTO `adm_objects` VALUES ('310', 'ATV_CZ_EP1', 'ATV', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'atv', '0', '0');
INSERT INTO `adm_objects` VALUES ('311', 'HMMWV_M1151_M2_CZ_DES_EP1', 'HMMWV GPK (M2)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('312', 'LandRover_CZ_EP1', 'Military Offroad', 'vehicle', 'Car', '10', '50', '2', '7', '0', 'jeep_closed', '2', '0');
INSERT INTO `adm_objects` VALUES ('313', 'LandRover_Special_CZ_EP1', 'Military Offroad Special', 'vehicle', 'Car', '10', '50', '2', '2', '0', 'jeep_armed', '2', '0');
INSERT INTO `adm_objects` VALUES ('314', 'ATV_US_EP1', 'ATV', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'atv', '0', '0');
INSERT INTO `adm_objects` VALUES ('315', 'HMMWV_Avenger_DES_EP1', 'HMMWV Avenger', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('316', 'HMMWV_DES_EP1', 'HMMWV', 'vehicle', 'Car', '10', '50', '4', '3', '0', 'jeep_armored', '0', '0');
INSERT INTO `adm_objects` VALUES ('317', 'HMMWV_M1035_DES_EP1', 'HMMWV Utility', 'vehicle', 'Car', '10', '50', '4', '3', '0', 'jeep_armored_', '0', '0');
INSERT INTO `adm_objects` VALUES ('318', 'HMMWV_M1151_M2_DES_EP1', 'HMMWV GPK (M2)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('319', 'HMMWV_M998_crows_M2_DES_EP1', 'HMMWV CROWS (M2)', 'vehicle', 'Car', '10', '50', '4', '2', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('320', 'HMMWV_M998_crows_MK19_DES_EP1', 'HMMWV CROWS (Mk19)', 'vehicle', 'Car', '10', '50', '4', '2', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('321', 'HMMWV_M998A2_SOV_DES_EP1', 'HMMWV SOV', 'vehicle', 'Car', '10', '50', '7', '4', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('322', 'HMMWV_MK19_DES_EP1', 'HMMWV (Mk19)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('323', 'HMMWV_Terminal_EP1', 'HMMWV Terminal', 'vehicle', 'Car', '10', '50', '2', '1', '0', 'jeep_armored', '0', '0');
INSERT INTO `adm_objects` VALUES ('324', 'HMMWV_TOW_DES_EP1', 'HMMWV (TOW)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('325', 'M1030_US_DES_EP1', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '0', '0');
INSERT INTO `adm_objects` VALUES ('326', 'MTVR_DES_EP1', 'MTVR', 'vehicle', 'Car', '50', '200', '8', '12', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('327', 'GRAD_CDF', 'BM-21 Grad', 'vehicle', 'Car', '50', '200', '8', '1', '0', 'truck_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('328', 'UAZ_AGS30_CDF', 'UAZ (AGS-30)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('329', 'UAZ_CDF', 'UAZ', 'vehicle', 'Car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('330', 'UAZ_MG_CDF', 'UAZ (DShKM)', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('331', 'Ural_CDF', 'Ural', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('332', 'Ural_ZU23_CDF', 'Ural (ZU-23)', 'vehicle', 'Car', '50', '200', '8', '3', '0', 'truck_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('333', 'UralOpen_CDF', 'Ural (Open)', 'vehicle', 'Car', '50', '200', '8', '14', '0', 'truck_open', '1', '0');
INSERT INTO `adm_objects` VALUES ('334', 'HMMWV', 'HMMWV', 'vehicle', 'Car', '10', '50', '4', '3', '0', 'jeep_armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('335', 'HMMWV_Armored', 'HMMWV (M240)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('336', 'HMMWV_Avenger', 'HMMWV Avenger', 'vehicle', 'Car', '10', '50', '3', '1', '0', 'jeep_armored_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('337', 'HMMWV_M2', 'HMMWV (M2)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '1', '0');
INSERT INTO `adm_objects` VALUES ('338', 'HMMWV_MK19', 'HMMWV (Mk19)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('339', 'HMMWV_TOW', 'HMMWV (TOW)', 'vehicle', 'Car', '10', '50', '5', '3', '0', 'jeep_armored_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('340', 'M1030', 'Motorcycle', 'vehicle', 'Car', '0', '5', '0', '1', '0', 'motorcycle', '1', '0');
INSERT INTO `adm_objects` VALUES ('341', 'MTVR', 'MTVR', 'vehicle', 'Car', '50', '200', '8', '12', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('342', 'TowingTractor', 'Towing Tractor', 'vehicle', 'Car', '10', '50', '2', '0', '0', 'Car', '0', '0');
INSERT INTO `adm_objects` VALUES ('343', 'BAF_ATV_D', 'ATV', 'vehicle', 'CarD', '10', '50', '2', '1', '0', 'atv', '0', '0');
INSERT INTO `adm_objects` VALUES ('344', 'BAF_Jackal2_GMG_D', 'Jackal 2 MWMIK (GMG)', 'vehicle', 'CarD', '10', '90', '2', '2', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('345', 'BAF_Jackal2_L2A1_D', 'Jackal 2 MWMIK (HMG)', 'vehicle', 'CarD', '10', '90', '2', '2', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('346', 'BAF_Offroad_D', 'Offroad', 'vehicle', 'CarD', '10', '90', '2', '7', '0', 'jeep_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('347', 'BAF_ATV_W', 'ATV', 'vehicle', 'CarW', '10', '50', '2', '1', '0', 'atv', '0', '0');
INSERT INTO `adm_objects` VALUES ('348', 'BAF_Jackal2_GMG_W', 'Jackal 2 MWMIK (GMG)', 'vehicle', 'CarW', '10', '90', '2', '2', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('349', 'BAF_Jackal2_L2A1_W', 'Jackal 2 MWMIK (HMG)', 'vehicle', 'CarW', '10', '90', '2', '2', '0', 'jeep_armed', '0', '0');
INSERT INTO `adm_objects` VALUES ('350', 'BAF_Offroad_W', 'Offroad', 'vehicle', 'CarW', '10', '90', '2', '7', '0', 'jeep_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('351', 'S1203_ambulance_EP1', 'S1203 Ambulance', 'vehicle', 'Support', '10', '50', '2', '3', '0', 'minivan', '0', '0');
INSERT INTO `adm_objects` VALUES ('352', 'UralReammo_TK_EP1', 'Ural (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('353', 'UralRefuel_TK_EP1', 'Ural (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('354', 'UralRepair_TK_EP1', 'Ural (Repair)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('355', 'UralSalvage_TK_EP1', 'Supply Truck', 'vehicle', 'Support', '50', '200', '8', '1', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('356', 'UralSupply_TK_EP1', 'Salvage Truck', 'vehicle', 'Support', '50', '200', '8', '1', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('357', 'BMP2_Ambul_INS', 'BMP-2 Ambulance', 'vehicle', 'Support', '10', '100', '5', '3', '0', 'tracked', '0', '0');
INSERT INTO `adm_objects` VALUES ('358', 'Mi17_medevac_Ins', 'Mi-8MT Medevac', 'vehicle', 'Support', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('359', 'UralReammo_INS', 'Ural (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('360', 'UralRefuel_INS', 'Ural (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('361', 'UralRepair_INS', 'Ural (Repair)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('362', 'GAZ_Vodnik_MedEvac', 'Vodnik (Ambulance)', 'vehicle', 'Support', '10', '50', '5', '5', '0', 'jeep_armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('363', 'KamazReammo', 'Utility Truck (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('364', 'KamazRefuel', 'Utility Truck (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('365', 'KamazRepair', 'Utility Truck (Repair)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('366', 'Mi17_medevac_RU', 'Mi-8MT Medevac', 'vehicle', 'air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('367', 'V3S_Reammo_TK_GUE_EP1', 'V3S Reammo', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('368', 'V3S_Refuel_TK_GUE_EP1', 'V3S Refuel', 'vehicle', 'Support', '50', '200', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('369', 'V3S_Repair_TK_GUE_EP1', 'V3S Repair', 'vehicle', 'Support', '10', '50', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('370', 'V3S_Salvage_TK_GUE_EP1', 'Supply Truck', 'vehicle', 'Support', '10', '50', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('371', 'V3S_Supply_TK_GUE_EP1', 'Salvage Truck', 'vehicle', 'Support', '50', '200', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('372', 'HMMWV_Ambulance_CZ_DES_EP1', 'HMMWV (Ambulance)', 'vehicle', 'Support', '10', '50', '6', '5', '0', 'jeep_armored', '0', '0');
INSERT INTO `adm_objects` VALUES ('373', 'HMMWV_Ambulance_DES_EP1', 'HMMWV (Ambulance)', 'vehicle', 'Support', '10', '50', '6', '5', '0', 'jeep_armored', '0', '0');
INSERT INTO `adm_objects` VALUES ('374', 'M1133_MEV_EP1', 'Stryker MEV', 'vehicle', 'Support', '10', '50', '5', '0', '0', 'wheeled', '0', '0');
INSERT INTO `adm_objects` VALUES ('375', 'MtvrReammo_DES_EP1', 'MTVR (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('376', 'MtvrRefuel_DES_EP1', 'MTVR (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('377', 'MtvrRepair_DES_EP1', 'MTVR (Repair)', 'vehicle', 'Support', '10', '50', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('378', 'MtvrSalvage_DES_EP1', 'Supply Truck', 'vehicle', 'Support', '10', '50', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('379', 'MtvrSupply_DES_EP1', 'Salvage Truck', 'vehicle', 'Support', '50', '200', '8', '1', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('380', 'UH60M_MEV_EP1', 'UH-60M MEV', 'vehicle', 'Support', '3', '20', '10', '7', '0', 'helicopter', '0', '0');
INSERT INTO `adm_objects` VALUES ('381', 'BMP2_Ambul_CDF', 'BMP-2 Ambulance', 'vehicle', 'Support', '10', '100', '5', '3', '0', 'tracked', '0', '0');
INSERT INTO `adm_objects` VALUES ('382', 'Mi17_medevac_CDF', 'Mi-17-IVA Medevac', 'vehicle', 'Support', '3', '20', '10', '16', '0', 'helicopter', '2', '0');
INSERT INTO `adm_objects` VALUES ('383', 'UralReammo_CDF', 'Ural (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('384', 'UralRefuel_CDF', 'Ural (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('385', 'UralRepair_CDF', 'Ural (Repair)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '1', '0');
INSERT INTO `adm_objects` VALUES ('386', 'HMMWV_Ambulance', 'HMMWV (Ambulance)', 'vehicle', 'Support', '10', '50', '6', '5', '0', 'jeep_armored', '1', '0');
INSERT INTO `adm_objects` VALUES ('387', 'MtvrReammo', 'MTVR (Ammunition)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('388', 'MtvrRefuel', 'MTVR (Fuel)', 'vehicle', 'Support', '50', '200', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('389', 'MtvrRepair', 'MTVR (Repair)', 'vehicle', 'Support', '10', '50', '8', '2', '0', 'truck_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('390', 'Chukar_AllwaysEnemy_EP1', 'BQM-74', 'vehicle', 'Targets', '3', '20', '0', '0', '0', 'Targets', '0', '0');
INSERT INTO `adm_objects` VALUES ('391', 'Chukar_EP1', 'BQM-74', 'vehicle', 'Targets', '3', '20', '0', '0', '0', 'Targets', '2', '0');
INSERT INTO `adm_objects` VALUES ('392', 'Chukar', 'BQM-74', 'vehicle', 'Targets', '3', '20', '0', '0', '0', 'Targets', '0', '0');
INSERT INTO `adm_objects` VALUES ('393', 'Chukar_AllwaysEnemy', 'BQM-74', 'vehicle', 'Targets', '3', '20', '0', '0', '0', 'Targets', '0', '0');
INSERT INTO `adm_objects` VALUES ('394', 'WarfareReammoTruck_INS', 'Ural (Ammunition)', 'vehicle', 'WarfareClassName', '50', '200', '8', '2', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('395', 'WarfareSalvageTruck_INS', 'Salvage Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('396', 'WarfareSupplyTruck_INS', 'Supply Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('397', 'WarfareReammoTruck_RU', 'Utility Truck (Ammunition)', 'vehicle', 'WarfareClassName', '50', '200', '8', '2', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('398', 'WarfareSalvageTruck_RU', 'Salvage Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('399', 'WarfareSupplyTruck_RU', 'Supply Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('400', 'WarfareReammoTruck_Gue', 'Ural (Ammunition)', 'vehicle', 'WarfareClassName', '50', '200', '8', '2', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('401', 'WarfareRepairTruck_Gue', 'Repair Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '13', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('402', 'WarfareSalvageTruck_Gue', 'Salvage Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('403', 'WarfareSupplyTruck_Gue', 'Supply Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('404', 'WarfareReammoTruck_CDF', 'Ural (Ammunition)', 'vehicle', 'WarfareClassName', '50', '200', '8', '2', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('405', 'WarfareSalvageTruck_CDF', 'Salvage Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('406', 'WarfareSupplyTruck_CDF', 'Supply Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('407', 'WarfareReammoTruck_USMC', 'MTVR (Ammunition)', 'vehicle', 'WarfareClassName', '50', '200', '8', '2', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('408', 'WarfareSalvageTruck_USMC', 'Salvage Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('409', 'WarfareSupplyTruck_USMC', 'Supply Truck', 'vehicle', 'WarfareClassName', '50', '200', '8', '1', '0', 'WarfareCla', '0', '0');
INSERT INTO `adm_objects` VALUES ('410', '100Rnd_762x51_M240', 's100Rnd_762x51_M240', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('411', '10Rnd_127x99_m107', 's10Rnd_127x99_m107', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('412', '10Rnd_762x54_SVD', 's10Rnd_762x54_SVD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('413', '10x_303', 's10x_303', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('414', '15Rnd_9x19_M9', 's15Rnd_9x19_M9', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('415', '15Rnd_9x19_M9SD', 's15Rnd_9x19_M9SD', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('416', '15Rnd_W1866_Pellet', 's15Rnd_W1866_Pellet', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('417', '15Rnd_W1866_Slug', 's15Rnd_W1866_Slug', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('418', '17Rnd_9x19_glock17', 's17Rnd_9x19_glock17', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('419', '1Rnd_HE_M203', 's1Rnd_HE_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('420', '1Rnd_Smoke_M203', 's1Rnd_Smoke_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('421', '200Rnd_556x45_M249', 's200Rnd_556x45_M249', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('422', '20Rnd_556x45_Stanag', 's20Rnd_556x45_Stanag', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('423', '20Rnd_762x51_DMR', 's20Rnd_762x51_DMR', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('424', '20Rnd_762x51_FNFAL', 's20Rnd_762x51_FNFAL', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('425', '2Rnd_shotgun_74Pellets', 's2Rnd_shotgun_74Pellets', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('426', '2Rnd_shotgun_74Slug', 's2Rnd_shotgun_74Slug', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('427', '30Rnd_545x39_AK', 's30Rnd_545x39_AK', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('428', '30Rnd_556x45_Stanag', 's30Rnd_556x45_Stanag', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('429', '30Rnd_556x45_StanagSD', 's30Rnd_556x45_StanagSD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('430', '30Rnd_762x39_AK47', 's30Rnd_762x39_AK47', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('431', '30Rnd_9x19_MP5', 's30Rnd_9x19_MP5', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('432', '30Rnd_9x19_MP5SD', 's30Rnd_9x19_MP5SD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('433', '30Rnd_9x19_UZI', 's30Rnd_9x19_UZI', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('434', '5Rnd_762x51_M24', 's5Rnd_762x51_M24', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('435', '5x_22_LR_17_HMR', 's5x_22_LR_17_HMR', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('436', '64Rnd_9x19_SD_Bizon', 's64Rnd_9x19_SD_Bizon', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('437', '6Rnd_45ACP', 's6Rnd_45ACP', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('438', '7Rnd_45ACP_1911', 's7Rnd_45ACP_1911', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('439', '8Rnd_9x18_Makarov', 's8Rnd_9x18_Makarov', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('440', '8Rnd_B_Beneli_74Slug', 's8Rnd_B_Beneli_74Slug', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('441', '8Rnd_B_Beneli_Pellets', 's8Rnd_B_Beneli_Pellets', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('442', 'AKS_74', 'sAKS_74', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('443', 'AKS_74_GOSHAWK', 'sAKS_74_GOSHAWK', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('444', 'AKS_74_NSPU', 'sAKS_74_NSPU', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('445', 'AKS_74_kobr', 'sAKS_74_kobr', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('446', 'AKS_74_kobra', 'sAKS_74_kobra', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('447', 'AKS_74_pso', 'sAKS_74_pso', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('448', 'AKS_GOLD', 'sAKS_GOLD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('449', 'AKS_74_U', 'sAKS_74_U', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('450', 'AKS_74_UN_kobra', 'sAKS_74_UN_kobra', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('451', 'AK_107_GL_pso', 'sAK_107_GL_pso', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('452', 'AK_107_GL_kobra', 'sAK_107_GL_kobra', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('453', 'AK_107_kobra', 'sAK_107_kobra', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('454', 'AK_107_pso', 'sAK_107_pso', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('455', 'AK_47_M', 'sAK_47_M', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('456', 'AK_47_S', 'sAK_47_S', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('457', 'AK_74', 'sAK_74', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('458', 'AK_74_GL', 'sAK_74_GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('459', 'AK_74_GL_kobra', 'sAK_74_GL_kobra', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('460', 'BAF_AS50_scoped', 'sBAF_AS50_scoped', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('461', 'BAF_L85A2_RIS_CWS', 'sBAF_L85A2_RIS_CWS', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('462', 'BAF_L85A2_RIS_Holo', 'sBAF_L85A2_RIS_Holo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('463', 'BAF_L85A2_UGL_Holo', 'sBAF_L85A2_UGL_Holo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('464', 'Binocular', 'sBinocular', 'item', 'binocular', '0', '0', '0', '0', '1', 'binocular', '0', '1');
INSERT INTO `adm_objects` VALUES ('465', 'Laserdesignator', 'sLaserdesignator', 'item', 'binocular', '0', '0', '0', '0', '1', 'binocular', '0', '0');
INSERT INTO `adm_objects` VALUES ('466', 'Laserdesignator_mounted', 'sLaserdesignator_mounted', 'item', 'binocular', '0', '0', '0', '0', '1', 'binocular', '0', '0');
INSERT INTO `adm_objects` VALUES ('467', 'Binocular_Vector', 'sBinocular_Vector', 'item', 'binocular', '0', '0', '0', '0', '1', 'binocular', '0', '1');
INSERT INTO `adm_objects` VALUES ('468', 'bizon', 'sbizon', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('469', 'bizon_silenced', 'sbizon_silenced', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('470', 'BoltSteel', 'sBoltSteel', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('471', 'Colt1911', 'sColt1911', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('472', 'Crossbow', 'sCrossbow', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('473', 'crowbar_swing', 'scrowbar_swing', 'item', 'none', '0', '0', '0', '0', '1', 'none', '0', '0');
INSERT INTO `adm_objects` VALUES ('474', 'CZ_VestPouch_EP1', 'sCZ_VestPouch_EP1', 'item', 'backpack', '0', '0', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('475', 'DMR', 'sDMR', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('476', 'DZ_ALICE_Pack_EP1', 'sDZ_ALICE_Pack_EP1', 'item', 'backpack', '4', '20', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('477', 'DZ_Assault_Pack_EP1', 'sDZ_Assault_Pack_EP1', 'item', 'backpack', '2', '12', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('478', 'DZ_Backpack_EP1', 'sDZ_Backpack_EP1', 'item', 'backpack', '6', '24', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('479', 'DZ_CivilBackpack_EP1', 'sDZ_CivilBackpack_EP1', 'item', 'backpack', '3', '16', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('480', 'DZ_Patrol_Pack_EP1', 'sDZ_Patrol_Pack_EP1', 'item', 'backpack', '1', '8', '0', '0', '1', 'backpack', '0', '1');
INSERT INTO `adm_objects` VALUES ('481', 'Flare', 'sFlare', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('482', 'FlareGreen_M203', 'sFlareGreen_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('483', 'FlareWhite_M203', 'sFlareWhite_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('484', 'FN_FAL', 'sFN_FAL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('485', 'FN_FAL_ANPVS4', 'sFN_FAL_ANPVS4', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('486', 'G36A_camo', 'sG36A_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('487', 'FoodCanBakedBeans', 'sFoodCanBakedBeans', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('488', 'FoodCanFrankBeans', 'sFoodCanFrankBeans', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('489', 'FoodCanPasta', 'sFoodCanPasta', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('490', 'FoodCanSardines', 'sFoodCanSardines', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('491', 'FoodSteakCooked', 'sFoodSteakCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('492', 'FoodSteakRaw', 'sFoodSteakRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('493', 'G36a', 'sG36a', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('494', 'G36C', 'sG36C', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('495', 'MG36', 'sMG36', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('496', 'G36C_camo', 'sG36C_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('497', 'G36_C_SD_eotech', 'sG36_C_SD_eotech', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('498', 'G36K', 'sG36K', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('499', 'G36K_camo', 'sG36K_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('500', 'G36_C_SD_camo', 'sG36_C_SD_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('501', 'glock17_EP1', 'sglock17_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('502', 'HandChemBlue', 'sHandChemBlue', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('503', 'HandChemGreen', 'sHandChemGreen', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('504', 'HandChemRed', 'sHandChemRed', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('505', 'HandGrenade_West', 'sHandGrenade_West', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('506', 'HandRoadFlare', 'sHandRoadFlare', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('507', 'Hatchet_Swing', 'sHatchet_Swing', 'item', 'none', '0', '0', '0', '0', '1', 'none', '0', '0');
INSERT INTO `adm_objects` VALUES ('508', 'huntingrifle', 'shuntingrifle', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('509', 'KSVK', 'sKSVK', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('510', 'M107', 'sM107', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('511', 'MR43', 'sMR43', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('512', 'ItemAntibiotic', 'sItemAntibiotic', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('513', 'ItemBandage', 'sItemBandage', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('514', 'ItemBloodbag', 'sItemBloodbag', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('515', 'ItemCompass', 'sItemCompass', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('516', 'IR_Strobe_Marker', 'sIR_Strobe_Marker', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '0');
INSERT INTO `adm_objects` VALUES ('517', 'IR_Strobe_Target', 'sIR_Strobe_Target', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '0');
INSERT INTO `adm_objects` VALUES ('518', 'IRStrobe', 'sIRStrobe', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '0');
INSERT INTO `adm_objects` VALUES ('519', 'ItemEpinephrine', 'sItemEpinephrine', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('520', 'ItemEtool', 'sItemEtool', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('521', 'ItemFlashlight', 'sItemFlashlight', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('522', 'ItemFlashlightRed', 'sItemFlashlightRed', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('523', 'ItemGenerator', 'sItemGenerator', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '0');
INSERT INTO `adm_objects` VALUES ('524', 'ItemGPS', 'sItemGPS', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('525', 'ItemHatchet', 'sItemHatchet', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('526', 'ItemHeatPack', 'sItemHeatPack', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('527', 'ItemJerrycan', 'sItemJerrycan', 'item', 'heavyammo', '0', '0', '0', '0', '3', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('528', 'ItemJerrycanEmpty', 'sItemJerrycanEmpty', 'item', 'heavyammo', '0', '0', '0', '0', '3', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('529', 'ItemKnife', 'sItemKnife', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('530', 'ItemMap', 'sItemMap', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('531', 'ItemMatchbox', 'sItemMatchbox', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('532', 'ItemMorphine', 'sItemMorphine', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('533', 'ItemPainkiller', 'sItemPainkiller', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('534', 'ItemRadio', 'sItemRadio', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '0');
INSERT INTO `adm_objects` VALUES ('535', 'ItemSandbag', 'sItemSandbag', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('536', 'ItemSodaCoke', 'sItemSodaCoke', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('537', 'ItemSodaEmpty', 'sItemSodaEmpty', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('538', 'ItemSodaMdew', 'sItemSodaMdew', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('539', 'ItemSodaPepsi', 'sItemSodaPepsi', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('540', 'ItemTankTrap', 'sItemTankTrap', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('541', 'TrapBear', 'sTrapBear', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('542', 'ItemTent', 'sItemTent', 'item', 'heavyammo', '0', '0', '0', '0', '3', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('543', 'ItemToolbox', 'sItemToolbox', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('544', 'ItemWatch', 'sItemWatch', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('545', 'ItemWaterbottle', 'sItemWaterbottle', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('546', 'ItemWaterbottleUnfilled', 'sItemWaterbottleUnfilled', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('547', 'ItemWire', 'sItemWire', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('548', 'LeeEnfield', 'sLeeEnfield', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('549', 'M1014', 'sM1014', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('550', 'M107_DZ', 'sM107_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('551', 'm107_TWS_EP1_DZ', 'sm107_TWS_EP1_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('552', 'm107_TWS_EP1', 'sm107_TWS_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('553', 'M136', 'sM136', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('554', 'M32_EP1', 'sM32_EP1', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('555', 'M47Launcher_EP1', 'sM47Launcher_EP1', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('556', 'M79_EP1', 'sM79_EP1', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('557', 'MAAWS', 'sMAAWS', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('558', 'Mk13_EP1', 'sMk13_EP1', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('559', 'Javelin', 'sJavelin', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('560', 'Stinger', 'sStinger', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('561', 'RPG7V', 'sRPG7V', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('562', 'SMAW', 'sSMAW', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('563', 'Strela', 'sStrela', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('564', 'Igla', 'sIgla', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('565', 'MetisLauncher', 'sMetisLauncher', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('566', 'RPG18', 'sRPG18', 'item', 'backpack', '0', '0', '0', '0', '10', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('567', 'M14_EP1', 'sM14_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('568', 'M16A2', 'sM16A2', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('569', 'M16A2GL', 'sM16A2GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('570', 'm16a4', 'sm16a4', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('571', 'M16A4_ACG', 'sM16A4_ACG', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('572', 'M16A4_GL', 'sM16A4_GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('573', 'M16A4_ACG_GL', 'sM16A4_ACG_GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('574', 'M24', 'sM24', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('575', 'M40A3', 'sM40A3', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('576', 'M240', 'sM240', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('577', 'M240_DZ', 'sM240_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('578', 'M249', 'sM249', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('579', 'M8_SAW', 'sM8_SAW', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('580', 'M249_DZ', 'sM249_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('581', 'M4SPR', 'sM4SPR', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('582', 'M8_sharpshooter', 'sM8_sharpshooter', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('583', 'M4A1', 'sM4A1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('584', 'M4A1_Aim', 'sM4A1_Aim', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('585', 'M4A1_Aim_camo', 'sM4A1_Aim_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('586', 'M4A1_AIM_SD_camo', 'sM4A1_AIM_SD_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('587', 'M4A1_HWS_GL', 'sM4A1_HWS_GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('588', 'M4A1_HWS_GL_camo', 'sM4A1_HWS_GL_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('589', 'M4A1_HWS_GL_SD_Camo', 'sM4A1_HWS_GL_SD_Camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('590', 'M4A1_RCO_GL', 'sM4A1_RCO_GL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('591', 'M4A3_CCO_EP1', 'sM4A3_CCO_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('592', 'M4A3_RCO_GL_EP1', 'sM4A3_RCO_GL_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('593', 'SCAR_H_CQC_CCO', 'sSCAR_H_CQC_CCO', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('594', 'SCAR_H_CQC_CCO_SD', 'sSCAR_H_CQC_CCO_SD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('595', 'SCAR_H_STD_EGLM_Spect', 'sSCAR_H_STD_EGLM_Spect', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('596', 'm8_carbine_pmc', 'sm8_carbine_pmc', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('597', 'M9', 'sM9', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('598', 'M9SD', 'sM9SD', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('599', 'Makarov', 'sMakarov', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('600', 'MakarovSD', 'sMakarovSD', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '0');
INSERT INTO `adm_objects` VALUES ('601', 'MeleeCrowbar', 'sMeleeCrowbar', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('602', 'MeleeFlashlight', 'sMeleeFlashlight', 'item', 'pistol', '0', '0', '0', '0', '1', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('603', 'MeleeFlashlightRed', 'sMeleeFlashlightRed', 'item', 'pistol', '0', '0', '0', '0', '1', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('604', 'MeleeHatchet', 'sMeleeHatchet', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('605', 'Mk_48_DZ', 'sMk_48_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('606', 'MP5A5', 'sMP5A5', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('607', 'MP5SD', 'sMP5SD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('608', 'NVGoggles', 'sNVGoggles', 'item', 'binocular', '0', '0', '0', '0', '1', 'binocular', '0', '1');
INSERT INTO `adm_objects` VALUES ('609', 'PartEngine', 'sPartEngine', 'item', 'heavyammo', '0', '0', '0', '0', '6', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('610', 'PartFueltank', 'sPartFueltank', 'item', 'heavyammo', '0', '0', '0', '0', '4', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('611', 'PartGeneric', 'sPartGeneric', 'item', 'heavyammo', '0', '0', '0', '0', '3', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('612', 'PartGlass', 'sPartGlass', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('613', 'PartVRotor', 'sPartVRotor', 'item', 'heavyammo', '0', '0', '0', '0', '6', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('614', 'PartWheel', 'sPartWheel', 'item', 'heavyammo', '0', '0', '0', '0', '6', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('615', 'PartWoodPile', 'sPartWoodPile', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('616', 'PipeBomb', 'sPipeBomb', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('617', 'TimeBomb', 'sTimeBomb', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('618', 'Mine', 'sMine', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('619', 'MineE', 'sMineE', 'item', 'heavyammo', '0', '0', '0', '0', '2', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('620', 'M134', 'sM134', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('621', 'M134_2', 'sM134_2', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('622', 'TwinM134', 'sTwinM134', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('623', 'M240_veh', 'sM240_veh', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('624', 'M240_veh_2', 'sM240_veh_2', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('625', 'M240_veh_MG_Nest', 'sM240_veh_MG_Nest', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('626', 'Pecheneg', 'sPecheneg', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('627', 'RPK_74', 'sRPK_74', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('628', 'PK', 'sPK', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('629', 'PKT', 'sPKT', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('630', 'PKT_MG_Nest', 'sPKT_MG_Nest', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('631', 'PKT_veh', 'sPKT_veh', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('632', 'DT_veh', 'sDT_veh', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('633', 'TwinVickers', 'sTwinVickers', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('634', 'M2', 'sM2', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('635', 'M3P', 'sM3P', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('636', 'DSHKM', 'sDSHKM', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('637', 'KORD', 'sKORD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('638', 'KPVT', 'sKPVT', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('639', 'M249_EP1', 'sM249_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('640', 'M249_TWS_EP1', 'sM249_TWS_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('641', 'M249_m145_EP1', 'sM249_m145_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('642', 'M60A4_EP1', 'sM60A4_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('643', 'MG36_camo', 'sMG36_camo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('644', 'Mk_48_DES_EP1', 'sMk_48_DES_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('645', 'Mk_48', 'sMk_48', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('646', 'm240_scoped_EP1', 'sm240_scoped_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('647', 'Remington870', 'sRemington870', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('648', 'Remington870_lamp', 'sRemington870_lamp', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('649', 'revolver_EP1', 'srevolver_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('650', 'revolver_gold_EP1', 'srevolver_gold_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '0');
INSERT INTO `adm_objects` VALUES ('651', 'Sa61_EP1', 'sSa61_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '0');
INSERT INTO `adm_objects` VALUES ('652', 'Sa58P_EP1', 'sSa58P_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('653', 'Sa58V_CCO_EP1', 'sSa58V_CCO_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('654', 'Sa58V_EP1', 'sSa58V_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('655', 'Sa58V_RCO_EP1', 'sSa58V_RCO_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('656', 'Saiga12K', 'sSaiga12K', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('657', 'SCAR_L_CQC', 'sSCAR_L_CQC', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('658', 'SCAR_L_CQC_CCO_SD', 'sSCAR_L_CQC_CCO_SD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('659', 'SCAR_L_CQC_EGLM_Holo', 'sSCAR_L_CQC_EGLM_Holo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('660', 'SCAR_L_CQC_Holo', 'sSCAR_L_CQC_Holo', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('661', 'SCAR_L_STD_EGLM_RCO', 'sSCAR_L_STD_EGLM_RCO', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('662', 'SCAR_L_STD_EGLM_TWS', 'sSCAR_L_STD_EGLM_TWS', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('663', 'SCAR_L_STD_HOLO', 'sSCAR_L_STD_HOLO', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('664', 'SCAR_L_STD_Mk4CQT', 'sSCAR_L_STD_Mk4CQT', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('665', 'Skin_Camo1_DZ', 'sSkin_Camo1_DZ', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('666', 'Skin_Sniper1_DZ', 'sSkin_Sniper1_DZ', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('667', 'Skin_Soldier1_DZ', 'sSkin_Soldier1_DZ', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('668', 'Skin_Survivor2_DZ', 'sSkin_Survivor2_DZ', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('669', 'SmokeShell', 'sSmokeShell', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('670', 'SmokeShellGreen', 'sSmokeShellGreen', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('671', 'SmokeShellRed', 'sSmokeShellRed', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('672', 'SVD', 'sSVD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('673', 'SVD_des_EP1', 'sSVD_des_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('674', 'SVD_NSPU_EP1', 'sSVD_NSPU_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('675', 'SCAR_H_STD_TWS_SD', 'sSCAR_H_STD_TWS_SD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('676', 'SCAR_H_LNG_Sniper_SD', 'sSCAR_H_LNG_Sniper_SD', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('677', 'SCAR_H_LNG_Sniper', 'sSCAR_H_LNG_Sniper', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('678', 'M24_des_EP1', 'sM24_des_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('679', 'M110_TWS_EP1', 'sM110_TWS_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('680', 'M110_NVG_EP1', 'sM110_NVG_EP1', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('681', 'SVD_CAMO', 'sSVD_CAMO', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('682', 'VSS_Vintorez', 'sVSS_Vintorez', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('683', 'TrashJackDaniels', 'sTrashJackDaniels', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('684', 'TrashTinCan', 'sTrashTinCan', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('685', 'UZI_EP1', 'sUZI_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '1');
INSERT INTO `adm_objects` VALUES ('686', 'UZI_SD_EP1', 'sUZI_SD_EP1', 'item', 'pistol', '0', '0', '0', '0', '5', 'pistol', '0', '0');
INSERT INTO `adm_objects` VALUES ('687', 'Winchester1866', 'sWinchester1866', 'item', 'rifle', '0', '0', '0', '0', '1', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('688', 'Old_bike_TK_CIV_EP1', 'old_bike', 'vehicle', 'bike', '0', '0', '0', '1', '0', 'bike', '0', '0');
INSERT INTO `adm_objects` VALUES ('689', 'Old_bike_TK_INS_EP1', 'old_bike', 'vehicle', 'bike', '0', '0', '0', '1', '0', 'bike', '0', '0');
INSERT INTO `adm_objects` VALUES ('692', 'Hedgehog_DZ', 'Hedgehog', 'vehicle', 'deployable', '0', '0', '0', '0', '0', 'Hedgehog_DZ', '1', '1');
INSERT INTO `adm_objects` VALUES ('693', 'Wire_cat1', 'Wire cat', 'vehicle', 'deployable', '0', '0', '0', '0', '0', 'Wire_cat1', '0', '0');
INSERT INTO `adm_objects` VALUES ('694', 'Smallboat_1', 'Small boat', 'vehicle', 'boat', '3', '24', '0', '4', '0', 'smallboat', '0', '0');
INSERT INTO `adm_objects` VALUES ('696', 'Fishing_Boat', 'Fishing Boat', 'vehicle', 'boat', '3', '24', '0', '0', '0', 'boat', '0', '0');
INSERT INTO `adm_objects` VALUES ('697', 'PBX', 'PBX', 'vehicle', 'boat', '3', '24', '0', '0', '0', 'smallboat', '0', '0');
INSERT INTO `adm_objects` VALUES ('698', 'Tractor', 'Tractor', 'vehicle', 'car', '24', '3', '0', '0', '0', 'tractor', '0', '0');
INSERT INTO `adm_objects` VALUES ('699', 'UH1H_DZ', 'UH1H', 'vehicle', 'Air', '24', '3', '0', '4', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('700', 'Mi17_DZ', 'Mi17', 'vehicle', 'Air', '3', '20', '10', '16', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('701', 'AH6X_DZ', 'AH-6X', 'vehicle', 'Air', '3', '20', '5', '1', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('702', 'AN2_DZ', 'An-2', 'vehicle', 'Air', '3', '20', '0', '15', '0', 'aircraftsmall', '1', '0');
INSERT INTO `adm_objects` VALUES ('703', 'AH-64D', 'AH-64D', 'vehicle', 'Air', '3', '20', '1', '0', '0', 'helicopter', '1', '1');
INSERT INTO `adm_objects` VALUES ('704', 'MMT_Civ', 'old_bike', 'vehicle', 'bike', '0', '0', '0', '1', '0', 'bike', '2', '0');
INSERT INTO `adm_objects` VALUES ('705', 'MMT_USMC', 'bike', 'vehicle', 'bike', '0', '0', '0', '1', '0', 'bike', '2', '0');
INSERT INTO `adm_objects` VALUES ('706', 'HandGrenade_East', 'HandGrenade_East', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('707', '5Rnd_127x99_as50', '5Rnd_127x99_as50', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('708', '1Rnd_HE_GP25', '1Rnd_HE_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('709', 'Sandbag1_DZ', 'Sandbag1_DZ', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'Sandbag1_DZ', '1', '1');
INSERT INTO `adm_objects` VALUES ('710', 'DZ_British_ACU', 'British ACU', 'vehicle', 'Backpacks', '3', '18', '1', '0', '0', 'Backpacks', '0', '1');
INSERT INTO `adm_objects` VALUES ('711', 'ItemMachete', 'Machete', 'Item', 'Item', '0', '0', '0', '0', '1', 'Item', '0', '1');
INSERT INTO `adm_objects` VALUES ('712', 'MeleeMachete', 'sMeleeMachete', 'Item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('713', 'FoodMRE', 'sFoodMRE', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('714', 'FoodPistachio', 'sFoodPistachio', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('715', 'FoodbeefCooked', 'sFoodbeefCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('716', 'DZ_TK_Assault_Pack_EP1', 'Assault_Pack', 'vehicle', 'Backpacks', '1', '12', '0', '0', '0', 'Backpacks', '0', '1');
INSERT INTO `adm_objects` VALUES ('717', 'FoodCanUnlabeled', 'sFoodCanUnlabeled', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('718', 'ItemTrashRazor', 'sItemTrashRazor', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('719', 'ItemTrashToiletpaper', 'sItemTrashToiletpaper', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('720', 'WoodenArrow', 'sWoodenArrow', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('721', 'Quiver', 'sQuiver', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('722', 'Crossbow_DZ', 'sCrossbow_DZ', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('723', 'FoodNutmix', 'sFoodNutmix', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('724', 'DZ_Czech_Vest_Puch', 'DZ_Czech_Vest_Puch', 'vehicle', 'Backpacks', '0', '12', '0', '0', '0', 'Backpacks', '0', '1');
INSERT INTO `adm_objects` VALUES ('725', 'ItemCrowbar', 'sItemCrowbar', 'item', 'item', '0', '0', '0', '0', '1', 'item', '0', '1');
INSERT INTO `adm_objects` VALUES ('726', '30Rnd_556x45_G36', 's30Rnd_556x45_G36', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('727', 'MH6J_DZ', 'MH6J', 'vehicle', 'air', '3', '20', '0', '20', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('728', 'HMMWV_DZ', 'HMMWV_DZ', 'vehicle', 'car', '10', '50', '7', '6', '0', 'jeep_closed', '0', '0');
INSERT INTO `adm_objects` VALUES ('729', 'FoodrabbitRaw', 'sFoodrabbitRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('730', 'FoodmuttonRaw', 'sFoodmuttonRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('731', '30Rnd_762x39_SA58', 's30Rnd_762x39_SA58', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('732', 'FoodbaconRaw', 'sFoodbaconRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('733', 'FoodchickenRaw', 'sFoodchickenRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('734', 'FoodmuttonCooked', 'sFoodmuttonCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('735', 'FoodchickenCooked', 'sFoodchickenCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('736', 'FoodbaconCooked', 'sFoodbaconCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('737', 'FoodRabbitCooked', 'sFoodRabbitCooked', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('738', 'ItemSodaPepsiEmpty', 'sItemSodaPepsiEmpty', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('739', 'FoodCanUnlabeledEmpty', 'sFoodCanUnlabeledEmpty', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('740', 'BAF_AS50_TWS', 'sBAF_AS50_TWS', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('741', 'BAF_L85A2_RIS_SUSAT', 'sBAF_L85A2_RIS_SUSAT', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '1');
INSERT INTO `adm_objects` VALUES ('742', 'BAF_L110A1_Aim', 'sBAF_L110A1_Aim', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('743', '30Rnd_545x39_AKSD', 's30Rnd_545x39_AKSD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('744', '100Rnd_556x45_BetaCMag', 's100Rnd_556x45_BetaCMag', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('745', '30Rnd_556x45_G36SD', 's30Rnd_556x45_G36SD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('746', '100Rnd_556x45_M249', 's100Rnd_556x45_M249', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('747', '5Rnd_127x108_KSVK', 's5Rnd_127x108_KSVK', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('748', '1Rnd_SmokeRed_M203', 's1Rnd_SmokeRed_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('749', '1Rnd_SMOKE_GP25', 's1Rnd_SMOKE_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('750', 'FlareRed_GP25', 'sFlareRed_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('751', 'SmokeShellYellow', 'sSmokeShellYellow', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('752', 'SmokeShellOrange', 'sSmokeShellOrange', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('753', '20Rnd_B_765x17_Ball', 's20Rnd_B_765x17_Ball', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('754', '10Rnd_9x39_SP5_VSS', 's10Rnd_9x39_SP5_VSS', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('755', '20Rnd_762x51_SB_SCAR', 's20Rnd_762x51_SB_SCAR', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('756', '1Rnd_SmokeYellow_M203', 's1Rnd_SmokeYellow_M203', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('757', '100Rnd_762x54_PK', 's100Rnd_762x54_PK', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('758', 'SmokeShellBlue', 'sSmokeShellBlue', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('759', 'SmokeShellPurple', 'sSmokeShellPurple', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('760', '20Rnd_B_AA12_Pellets', 's20Rnd_B_AA12_Pellets', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('761', 'AA12_PMC', 'sAA12_PMC', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('762', 'HandGrenade_Stone', 'sHandGrenade_Stone', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('763', 'm8_carbine', 'sm8_carbine', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('764', 'm8_carbineGL', 'sm8_carbineGL', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('765', 'm8_compact', 'sm8_compact', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('766', 'm8_compact_pmc', 'sm8_compact_pmc', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('767', 'm8_holo_sd', 'sm8_holo_sd', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('768', 'm8_tws', 'sm8_tws', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('769', 'm8_tws_sd', 'sm8_tws_sd', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('770', '20Rnd_762x51_B_SCAR', 's20Rnd_762x51_B_SCAR', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('771', '64Rnd_9x19_Bizon', 's64Rnd_9x19_Bizon', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('772', '6Rnd_SmokeRed_M203', 's6Rnd_SmokeRed_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('773', '6Rnd_FlareWhite_M203', 's6Rnd_FlareWhite_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('774', '6Rnd_HE_M203', 's6Rnd_HE_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('775', '6Rnd_FlareGreen_M203', 's6Rnd_FlareGreen_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('776', '6Rnd_FlareRed_M203', 's6Rnd_FlareRed_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('777', '6Rnd_FlareYellow_M203', 's6Rnd_FlareYellow_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('778', '6Rnd_Smoke_M203', 's6Rnd_Smoke_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('779', '6Rnd_SmokeGreen_M203', 's6Rnd_SmokeGreen_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('780', '6Rnd_SmokeYellow_M203', 's6Rnd_SmokeYellow_M203', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('781', 'BAF_LRR_scoped_W', 'sBAF_LRR_scoped_W', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('782', '75Rnd_545x39_RPK', 's75Rnd_545x39_RPK', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('783', '8Rnd_B_Saiga12_Pellets', 's8Rnd_B_Saiga12_Pellets', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('784', '8Rnd_B_Saiga12_74Slug', 's8Rnd_B_Saiga12_74Slug', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('785', '30Rnd_9x19_UZI_SD', 's30Rnd_9x19_UZI_SD', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('786', '20Rnd_9x39_SP5_VSS', 's20Rnd_9x39_SP5_VSS', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('788', '5Rnd_86x70_L115A1', 's5Rnd_86x70_L115A1', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('789', 'BAF_LRR_scoped', 'sBAF_LRR_scoped', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('790', 'BAF_L86A2_ACOG', 'sBAF_L86A2_ACOG', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('791', 'BAF_L17_40mm', 'sBAF_L17_40mm', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('792', 'BAF_L85A2_UGL_ACOG', 'sBAF_L85A2_UGL_ACOG', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('793', 'BAF_L85A2_UGL_SUSAT', 'sBAF_L85A2_UGL_SUSAT', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('794', 'BAF_L85A2_RIS_ACOG', 'sBAF_L85A2_RIS_ACOG', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('795', 'BAF_L7A2_GPMG', 'sBAF_L7A2_GPMG', 'item', 'backpack', '0', '0', '0', '0', '1', 'backpack', '0', '0');
INSERT INTO `adm_objects` VALUES ('796', '200Rnd_556x45_L110A1', 's200Rnd_556x45_L110A1', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('797', 'FlareWhite_GP25', 'sFlareWhite_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('798', 'FlareGreen_GP25', 'sFlareGreen_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('799', 'FlareYellow_GP25', 'sFlareYellow_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('800', '1Rnd_SmokeRed_GP25', 's1Rnd_SmokeRed_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('801', '1Rnd_SmokeGreen_GP25', 's1Rnd_SmokeGreen_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('802', '1Rnd_SmokeYellow_GP25', 's1Rnd_SmokeYellow_GP25', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('803', '8Rnd_9x18_MakarovSD', 's8Rnd_9x18_MakarovSD', 'item', 'smallammo', '0', '0', '0', '0', '1', 'smallammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('807', 'FoodbeefRaw', 'sFoodbeefRaw', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '1');
INSERT INTO `adm_objects` VALUES ('806', 'BAF_L109A1_HE', 'sBAF_L109A1_HE', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('808', '20Rnd_B_AA12_HE', 's20Rnd_B_AA12_HE', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('809', '20Rnd_B_AA12_74Slug', 's20Rnd_B_AA12_74Slug', 'item', 'heavyammo', '0', '0', '0', '0', '1', 'heavyammo', '0', '0');
INSERT INTO `adm_objects` VALUES ('810', 'Ka60_GL_NAC', 'Ka60_GL_NAC', 'vehicle', 'air', '3', '10', '0', '20', '0', 'helicopter', '1', '0');
INSERT INTO `adm_objects` VALUES ('811', 'VSS_vintorez_DZN', 'VSS_vintorez_DZN', 'item', 'rifle', '0', '0', '0', '0', '10', 'rifle', '0', '0');
INSERT INTO `adm_objects` VALUES ('812', 'RPK_74_DZN', 'RPK_74_DZN', 'item', 'rifle', '0', '0', '0', '0', '30', 'rifle', '0', '0');

-- ----------------------------
-- Table structure for `character_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `Alive` tinyint(1) NOT NULL DEFAULT '1',
  `InstanceID` tinyint(2) NOT NULL,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Backpack` longtext NOT NULL,
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Generation` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Datestamp` timestamp NULL DEFAULT NULL,
  `LastLogin` timestamp NULL DEFAULT NULL,
  `LastAte` timestamp NULL DEFAULT NULL,
  `LastDrank` timestamp NULL DEFAULT NULL,
  `Humanity` int(10) DEFAULT NULL,
  `KillsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `distanceFoot` bigint(15) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '0',
  `currentState` varchar(128) NOT NULL DEFAULT '[]',
  `KillsH` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `KillsB` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor1_DZ"',
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`,`PlayerUID`)
) ENGINE=MyISAM AUTO_INCREMENT=1874 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for `character_data_dead`
-- ----------------------------
DROP TABLE IF EXISTS `character_data_dead`;
CREATE TABLE `character_data_dead` (
  `CharacterID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `Alive` tinyint(1) NOT NULL DEFAULT '1',
  `InstanceID` tinyint(2) NOT NULL,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Backpack` longtext NOT NULL,
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Generation` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Datestamp` timestamp NULL DEFAULT NULL,
  `LastLogin` timestamp NULL DEFAULT NULL,
  `LastAte` timestamp NULL DEFAULT NULL,
  `LastDrank` timestamp NULL DEFAULT NULL,
  `Humanity` int(10) DEFAULT NULL,
  `KillsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `distanceFoot` bigint(15) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '0',
  `currentState` varchar(128) NOT NULL DEFAULT '[]',
  `KillsH` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `KillsB` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor1_DZ"',
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`,`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_data_dead
-- ----------------------------

-- ----------------------------
-- Table structure for `dbver`
-- ----------------------------
DROP TABLE IF EXISTS `dbver`;
CREATE TABLE `dbver` (
  `version` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbver
-- ----------------------------
INSERT INTO `dbver` VALUES ('123');

-- ----------------------------
-- Table structure for `deployable`
-- ----------------------------
DROP TABLE IF EXISTS `deployable`;
CREATE TABLE `deployable` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq1_deployable` (`class_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1749 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deployable
-- ----------------------------
INSERT INTO `deployable` VALUES ('1748', 'TentStorage');
INSERT INTO `deployable` VALUES ('2', 'TrapBear');
INSERT INTO `deployable` VALUES ('3', 'Wire_cat1');
INSERT INTO `deployable` VALUES ('4', 'Hedgehog_DZ');
INSERT INTO `deployable` VALUES ('5', 'Sandbag1_DZ');

-- ----------------------------
-- Table structure for `object_classes`
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '8', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat_DZ', '0.9', '7', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.66', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.64', '39', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.69', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.68', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.7', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.72', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.7', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.59', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.67', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.66', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.71', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('PBX_DZ', '0.4', '5', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.65', '3', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '19', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.7', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.7', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.70', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.7', '3', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Lada1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.70', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian_DZ', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.70', '18', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Special', '0.7', '10', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Smallboat_1_DZ', '0.70', '0', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Smallboat_2_DZ', '0.70', '0', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.7', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.7', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.5', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.7', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Pickup_PK_DZ', '0.7', '3', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_MG_DZ', '0.7', '7', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Zodiac_DZ', '0.5', '2', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.7', '3', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_ScrapBuggy', '0.5', '13', '0.05', '[[\"motor\",0.8],[\"karoserie\",0.6],[\"palivo\",0.5],[\"wheel_1_1_steering\",1],[\"wheel_2_2_steering\",1],[\"front_plow\",1]]');
INSERT INTO `object_classes` VALUES ('rth_scrapbus', '0.5', '14', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('rth_ScrapApc', '0.5', '31', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_copter_green', '0.5', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_copter_yellow', '0.5', '6', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_raft', '0.5', '15', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('rth_raft_small', '0.5', '14', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('DC3', '0.9', '1', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('p85_cucv_pickup', '0.7', '5', '0.05', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"sklo_z\",0.4],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.8],[\"motor\",0.6],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_p85_cucv', '0.7', '4', '0.05', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_p2\",0.6],[\"sklo_l1\",1],[\"sklo_l2\",0.5],[\"sklo_z\",1],[\"levy zadni tlumic\",1],[\"pravy predni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.4],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_volvo_fl290', '0.7', '6', '0.05', '[[\"sklo_p\",0.7],[\"sklo_p1\",1],[\"sklo_p2\",0.9],[\"sklo_p3\",0.3],[\"sklo_l1\",0.1],[\"sklo_l2\",0.1],[\"sklo_l3\",1],[\"levy predni tlumic\",0.5],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",0.2],[\"karoserie\",0.1],[\"palivo\",0.6],[\"motor\",1],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ2', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",0.7],[\"levy predni tlumic\",0.1],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",0.3],[\"pravy zadni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.6],[\"motor\",0.5],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ1', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",0.8],[\"sklo_l1\",0.3],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",1],[\"pravy predni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.4],[\"palivo\",1],[\"motor\",0.7],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.9],[\"palivo\",0.6],[\"motor\",0.2],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_lublin_truck', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",0.2],[\"pravy predni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.2],[\"sklo predni P\",1],[\"motor\",0.7],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('rth_amphicar', '0.7', '15', '0.05', '[[\"LF_hit\",1],[\"LM_hit\",1],[\"LB_hit\",0.4],[\"RF_hit\",1],[\"RM_hit\",1],[\"RB_hit\",1],[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('origins_bathmobile', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"front_plow\",1],[\"wheel_guards\",1],[\"windshield_guard\",1]]');

-- ----------------------------
-- Table structure for `object_data`
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` varchar(20) DEFAULT NULL,
  `Instance` int(3) DEFAULT NULL,
  `Classname` varchar(32) DEFAULT NULL,
  `Damage` double(13,5) DEFAULT NULL,
  `CharacterID` int(10) unsigned DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) DEFAULT NULL,
  `Fuel` double(13,5) DEFAULT NULL,
  `Datestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`)
) ENGINE=MyISAM AUTO_INCREMENT=1753 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_data
-- ----------------------------

-- ----------------------------
-- Table structure for `object_spawns`
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns`;
CREATE TABLE `object_spawns` (
  `ObjectUID` varchar(20) NOT NULL DEFAULT '',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_spawns
-- ----------------------------
INSERT INTO `object_spawns` VALUES ('0000000000018', 'Old_bike_TK_CIV_EP1', '[210,[3910,7357,0]]', 'Motrovice Statue');
INSERT INTO `object_spawns` VALUES ('0000000000019', 'V3S_Civ', '[270,[3903,7069,0]]', 'Motrovice Fulestation');
INSERT INTO `object_spawns` VALUES ('0000000000020', 'tractor', '[80,[4580,6319,0]]', 'Barn in 045|192');
INSERT INTO `object_spawns` VALUES ('0000000000021', 'Old_bike_TK_CIV_EP1', '[290,[5394,5885,0]]', 'Silos in 053|197');
INSERT INTO `object_spawns` VALUES ('0000000000022', 'TT650_TK_CIV_EP1', '[90,[6174,5335,0]]', 'Lighthouse in 061|202');
INSERT INTO `object_spawns` VALUES ('0000000000023', 'ATV_CZ_EP1', '[135,[7950,5379,0]]', 'Castle Grad Bled');
INSERT INTO `object_spawns` VALUES ('0000000000025', 'Lada1_TK_CIV_EP1', '[145,[8780,2383,0]]', '087|232');
INSERT INTO `object_spawns` VALUES ('0000000000026', 'Ikarus', '[135,[8805,2318,0]]', 'Busstop near Hotel 087|232');
INSERT INTO `object_spawns` VALUES ('0000000000028', 'VWGolf', '[215,[8895,2265,0]]', 'Garage at 086|233');
INSERT INTO `object_spawns` VALUES ('0000000000029', 'MMT_Civ', '[1,[8987,2235,0]]', 'Close to Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000030', 'S1203_TK_CIV_EP1', '[120,[8978,2254,0]]', 'Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000031', 'LadaLM', '[300,[8995,2292,0]]', 'Firestation 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000032', 'car_hatchback', '[210,[8957,2343,0]]', '089|232');
INSERT INTO `object_spawns` VALUES ('0000000000033', 'rth_scrapbus', '[320,[9922,1412,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000034', 'rth_scrapbus', '[140,[9935,1391,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000035', 'datsun1_civil_2_covered', '[245,[10051,1375,0]]', '100|242');
INSERT INTO `object_spawns` VALUES ('0000000000037', 'tractor', '[310,[10495,1086,0]]', 'Barn 104|245');
INSERT INTO `object_spawns` VALUES ('0000000000038', 'Old_bike_TK_CIV_EP1', '[220,[10889,850,0]]', '108|247');
INSERT INTO `object_spawns` VALUES ('0000000000039', 'datsun1_civil_3_open', '[220,[10920,819,0]]', '109|248');
INSERT INTO `object_spawns` VALUES ('0000000000040', 'Ikarus', '[100,[10946,798,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000041', 'rth_scrapbus', '[280,[10968,800,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000042', 'rth_ScrapApc', '[130,[10939,868,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000043', 'SkodaRed', '[250,[11175,715,0]]', '111|248');
INSERT INTO `object_spawns` VALUES ('0000000000044', 'SUV_Special', '[80,[11258,875,0]]', '112|247');
INSERT INTO `object_spawns` VALUES ('0000000000045', 'rth_ScrapApc', '[270,[11649,773,0]]', 'Fulestation 116|248');
INSERT INTO `object_spawns` VALUES ('0000000000046', 'SkodaGreen', '[120,[11701,749,0]]', '117|258');
INSERT INTO `object_spawns` VALUES ('0000000000047', 'Old_bike_TK_CIV_EP1', '[120,[11760,886,0]]', 'Hotel 117|247');
INSERT INTO `object_spawns` VALUES ('0000000000048', 'UralCivil2', '[320,[11414,1153,0]]', 'Hotel 114|244');
INSERT INTO `object_spawns` VALUES ('0000000000049', 'ATV_CZ_EP1', '[145,[11798,1452,0]]', 'Hotel 117|241');
INSERT INTO `object_spawns` VALUES ('0000000000050', 'Old_bike_TK_CIV_EP1', '[220,[10151,2906,0]]', 'Farm at 101|226');
INSERT INTO `object_spawns` VALUES ('0000000000051', 'rth_ScrapBuggy', '[130,[9903,3177,0]]', 'Cowshed at 099|224');
INSERT INTO `object_spawns` VALUES ('0000000000052', 'ATV_CZ_EP1', '[270,[9791,3913,0]]', 'Farm at 097|216 ');
INSERT INTO `object_spawns` VALUES ('0000000000053', 'rth_scrapbus', '[180,[9705,4389,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000054', 'Ikarus', '[1,[9711,4404,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000056', 'car_sedan', '[270,[9675,4346,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000057', 'UralCivil', '[90,[9281,4389,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000060', 'UAZ_RU', '[120,[9309,5289,0]]', 'FOB at Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000061', 'SkodaBlue', '[270,[9172,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000062', 'Old_bike_TK_CIV_EP1', '[1,[9055,5393,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000063', 'rth_scrapbus', '[270,[8997,5424,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000064', 'rth_scrapbus', '[110,[9037,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000065', 'rth_ScrapBuggy', '[1,[8958,5399,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000066', 'tractor', '[100,[8344,5538,0]]', '083|200');
INSERT INTO `object_spawns` VALUES ('0000000000067', 'Skoda', '[60,[8486,5592,0]]', 'Poljanka');
INSERT INTO `object_spawns` VALUES ('0000000000068', 'rth_ScrapApc', '[340,[8235,6094,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000069', 'Ikarus', '[160,[8228,6097,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000070', 'MMT_Civ', '[340,[8248,6115,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000071', 'SUV_Special', '[60,[7838,6529,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000072', 'Old_bike_TK_CIV_EP1', '[320,[7914,6697,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000073', 'V3S_Civ', '[160,[7942,6909,0]]', 'Novi Dvor Factory');
INSERT INTO `object_spawns` VALUES ('0000000000074', 'ATV_CZ_EP1', '[180,[7566,7381,0]]', 'Barn South of Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000075', 'rth_scrapbus', '[200,[7873,7799,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000076', 'rth_scrapbus', '[20,[7880,7808,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000077', 'Mi17_Civilian_DZ', '[180,[6927,8343,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000078', 'LadaLM', '[210,[7453,8090,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000079', 'AN2_DZ', '[220,[7550,8009,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000080', 'rth_ScrapBuggy', '[1,[5180,8089,0]]', 'Barn near Primmorsk');
INSERT INTO `object_spawns` VALUES ('0000000000081', 'MMT_Civ', '[340,[5375,8484,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000086', 'Skoda', '[160,[5523,8957,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000087', 'Volha_2_TK_CIV_EP1', '[165,[5568,8952,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000001', 'TT650_Gue', '[140,[2114,7055,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000002', 'TT650_Gue', '[180,[2116,7062,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000003', 'MMT_Civ', '[240,[1361,7954,0]]', 'Lighthouse 013|176');
INSERT INTO `object_spawns` VALUES ('0000000000004', 'ATV_CZ_EP1', '[300,[3286,6879,0]]', 'Radiotower 032|187');
INSERT INTO `object_spawns` VALUES ('0000000000005', 'hilux1_civil_3_open_EP1', '[359,[3311,7870,0]]', 'Stangrad Port, between containers');
INSERT INTO `object_spawns` VALUES ('0000000000006', 'UralCivil', '[180,[3413,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000007', 'Ural_TK_CIV_EP1', '[180,[3427,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000009', 'rth_ScrapBuggy', '[130,[1634,7604,0]]', 'Stangrad in front of a garage');
INSERT INTO `object_spawns` VALUES ('0000000000010', 'Old_bike_TK_CIV_EP1', '[330,[3290,7529,0]]', 'Stangrad on plaza by church');
INSERT INTO `object_spawns` VALUES ('0000000000011', 'rth_ScrapApc', '[330,[3342,7396,0]]', 'Stangrad firestation');
INSERT INTO `object_spawns` VALUES ('0000000000012', 'Old_moto_TK_Civ_EP1', '[70,[2979,7437,0]]', 'Barn, west of Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000013', 'LadaLM', '[1,[3796,6887,0]]', 'Motrovice Fire Station');
INSERT INTO `object_spawns` VALUES ('0000000000014', 'rth_ScrapApc', '[180,[3785,6933,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000015', 'Ikarus', '[1,[3793,7072,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000016', 'VolhaLimo_TK_CIV_EP1', '[1,[3821,7129,0]]', 'Motrovice Hotel');
INSERT INTO `object_spawns` VALUES ('0000000000017', 'SkodaBlue', '[90,[3789,7278,0]]', 'Motrovice Supermarket');
INSERT INTO `object_spawns` VALUES ('0000000000089', 'Old_bike_TK_CIV_EP1', '[260,[5666,8826,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000090', 'rth_ScrapBuggy', '[250,[5504,8802,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000091', 'tractor', '[320,[5987,9604,0]]', 'Barn near Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000092', 'rth_ScrapBuggy', '[270,[5980,9939,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000093', 'S1203_TK_CIV_EP1', '[140,[5895,9946,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000094', 'Old_bike_TK_CIV_EP1', '[270,[5850,9901,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000095', 'rth_ScrapApc', '[200,[5788,9981,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000096', 'Skoda', '[270,[5715,9903,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000097', 'Ikarus', '[180,[5689,9856,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000098', 'rth_scrapbus', '[1,[5693,9880,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000099', 'UralCivil2', '[1,[5532,9750,0]]', 'Cernovar Port');
INSERT INTO `object_spawns` VALUES ('0000000000100', 'datsun1_civil_3_open', '[90,[6691,9909,0]]', 'Vedic');
INSERT INTO `object_spawns` VALUES ('0000000000101', 'Mi17_Civilian_DZ', '[180,[7799,9079,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000102', 'UAZ_RU', '[40,[7746,9082,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000103', 'ATV_CZ_EP1', '[320,[11010,6726,0]]', 'Grad Krkov');
INSERT INTO `object_spawns` VALUES ('0000000000104', 'UAZ_RU', '[60,[10395,6751,0]]', 'FOB near Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000105', 'Lada1', '[350,[10636,6518,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000106', 'LandRover_TK_CIV_EP1', '[300,[10644,6569,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000107', 'TowingTractor', '[270,[16529,10209,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000108', 'LadaLM', '[320,[16704,10623,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000109', 'AN2_DZ', '[270,[16730,10484,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000110', 'Mi17_Civilian_DZ', '[90,[16649,11577,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000111', 'AN2_DZ', '[240,[10285,18406,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000112', 'TowingTractor', '[160,[10233,18252,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000113', 'Mi17_Civilian_DZ', '[90,[10208,18667,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000114', 'ATV_CZ_EP1', '[20,[8126,21347,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000115', 'ATV_CZ_EP1', '[20,[8130,21345,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000116', 'rth_ScrapBuggy', '[150,[8878,19712,0]]', 'Barn North of Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000117', 'rth_ScrapApc', '[330,[8839,19446,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000118', 'rth_ScrapApc', '[40,[8836,19438,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000119', 'Old_moto_TK_Civ_EP1', '[160,[10379,19486,0]]', 'Barn North of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000120', 'tractor', '[300,[10408,19291,0]]', 'Barn Nort of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000121', 'Mi17_Civilian_DZ', '[290,[9983,18892,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000122', 'UAZ_RU', '[160,[9951,18910,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000123', 'V3S_Civ', '[30,[9937,19091,0]]', 'Lumbermill west of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000124', 'S1203_TK_CIV_EP1', '[20,[10163,18965,0]]', 'Yaroslav Firestation');
INSERT INTO `object_spawns` VALUES ('0000000000125', 'Ikarus', '[80,[10254,19037,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000126', 'rth_scrapbus', '[260,[10238,19038,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000127', 'hilux1_civil_1_open', '[260,[10314,19140,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000128', 'V3S_Civ', '[250,[10177,19193,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000129', 'rth_scrapbus', '[150,[10929,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000130', 'Ikarus', '[325,[10934,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000131', 'rth_ScrapBuggy', '[150,[10970,18710,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000132', 'Lada1', '[300,[11056,18699,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000133', 'Old_bike_TK_CIV_EP1', '[60,[11022,18770,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000134', 'Ural_TK_CIV_EP1', '[100,[10976,19033,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000135', 'rth_ScrapBuggy', '[100,[11110,17900,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000136', 'Old_moto_TK_Civ_EP1', '[60,[12917,19178,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000137', 'MMT_Civ', '[90,[13248,19383,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000138', 'rth_scrapbus', '[110,[13443,19388,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000139', 'tractor', '[100,[13502,19393,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000140', 'UAZ_RU', '[140,[14619,18538,0]]', 'FOB near Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000142', 'TT650_TK_CIV_EP1', '[230,[15135,18238,0]]', 'Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000143', 'hilux1_civil_1_open', '[280,[14849,18489,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000144', 'hilux1_civil_2_covered', '[320,[14881,18583,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000145', 'ATV_CZ_EP1', '[260,[15715,17082,0]]', 'Antenna at Zeleny Vrh');
INSERT INTO `object_spawns` VALUES ('0000000000146', 'UAZ_RU', '[220,[15077,15937,0]]', 'FOB near Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000147', 'PBX_DZ', '[330,[3735,2339,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000148', 'rth_raft_small', '[60,[3743,2331,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000149', 'rth_raft', '[270,[6085,1125,0]]', 'Ostrov Ash');
INSERT INTO `object_spawns` VALUES ('0000000000150', 'rth_raft', '[60,[957,14105,0]]', 'Isle Kres');
INSERT INTO `object_spawns` VALUES ('0000000000151', 'rth_raft', '[180,[11920,20885,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000152', 'PBX_DZ', '[90,[11930,20888,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000153', 'Fishing_Boat_DZ', '[280,[11695,18963,0]]', 'Ekatinburg Port');
INSERT INTO `object_spawns` VALUES ('0000000000154', 'Fishing_boat_DZ', '[90,[14753,18757,0]]', 'Balnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000155', 'rth_raft_small', '[90,[17420,12576,0]]', 'Molotovsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000156', 'rth_ScrapApc', '[0,[14574.9,10474.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000158', 'Old_bike_TK_CIV_EP1', '[2,[15160.3,9868.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000159', 'rth_ScrapBuggy', '[181,[15445.5,9736.16,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000160', 'rth_ScrapApc', '[274,[15547.1,9505.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000161', 'VolhaLimo_TK_CIV_EP1', '[4,[15474.3,9375.65,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000162', 'MMT_Civ', '[185,[15391.3,9277.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000165', 'rth_ScrapApc', '[108,[15408.7,8961.51,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000167', 'UAZ_Unarmed_TK_CIV_EP1', '[93,[15655.4,9620.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000168', 'UAZ_Unarmed_TK_EP1', '[15,[14510.7,9801.27,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000169', 'Volha_2_TK_CIV_EP1', '[2,[14993.4,9260.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000170', 'Lada2_TK_CIV_EP1', '[208,[15186.7,9188.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000171', 'Mi17_Civilian_DZ', '[0,[17442,5212,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000172', 'UAZ_MG_DZ', '[171,[17473.5,5221.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000173', 'Old_bike_TK_CIV_EP1', '[5,[17464.2,4106.35,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000174', 'PBX_DZ', '[321,[17442,4035.92,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000175', 'Old_bike_TK_CIV_EP1', '[2,[18421.7,5059.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000178', 'hilux1_civil_2_covered', '[0,[17683.4,6186.37,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000179', 'Old_bike_TK_CIV_EP1', '[275,[17694.9,6214.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000182', 'datsun1_civil_3_open', '[130,[17837.9,6490.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000183', 'rth_ScrapApc', '[272,[17508.4,7194.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000184', 'Old_bike_TK_CIV_EP1', '[84,[17167.6,7385.58,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000185', 'UAZ_RU', '[181,[17216.7,7662.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000187', 'Old_bike_TK_CIV_EP1', '[357,[16243.7,11497,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000188', 'Old_moto_TK_Civ_EP1', '[1,[16149.9,11571.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000189', 'rth_ScrapBuggy', '[3,[16279.2,11705.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000190', 'rth_ScrapApc', '[11,[16832.1,12608.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000191', 'Old_bike_TK_CIV_EP1', '[271,[16972.3,12761.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000192', 'UAZ_Unarmed_TK_EP1', '[181,[14473.2,11397.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000193', 'Lada1', '[178,[17244.4,7422.91,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000194', 'rth_ScrapApc', '[302,[16788,8455.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000195', 'Old_bike_TK_CIV_EP1', '[87,[16564.4,8259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000196', 'V3S_Civ', '[87,[16515.1,8085.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000197', 'Old_bike_TK_CIV_EP1', '[272,[16520,8380.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000198', 'TT650_Gue', '[261,[16877.2,8197.77,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000199', 'rth_ScrapApc', '[167,[17301.6,8240.52,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000201', 'UAZ_RU', '[130,[13405.5,8632.01,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000202', 'Old_bike_TK_CIV_EP1', '[88,[15526.4,8412.45,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000203', 'hilux1_civil_1_open', '[267,[15628.2,8506.59,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000204', 'datsun1_civil_3_open', '[267,[15627.7,8512.13,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000205', 'TT650_TK_CIV_EP1', '[108,[16432.5,6287.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000206', 'UAZ_MG_DZ', '[268,[16802.4,6322.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000207', 'Ural_UN_EP1', '[9,[16773.2,6268.66,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000208', 'TT650_Gue', '[6,[16517.8,9661.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000210', 'Ural_UN_EP1', '[181,[16312.4,10029.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000211', 'rth_ScrapApc', '[140,[17479.9,9193.12,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000212', 'rth_ScrapApc', '[335,[3102.28,2469.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000213', 'UAZ_RU', '[267,[15457.4,10033.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000214', 'Ikarus_TK_CIV_EP1', '[272,[15840.5,9551.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000215', 'LadaLM', '[183,[15458.4,10112.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000216', 'rth_ScrapApc', '[107,[15799.4,9042.73,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000217', 'hilux1_civil_3_open_EP1', '[270,[14742,9858.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000218', 'rth_scrapbus', '[290,[15089.2,9334.68,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000219', 'rth_ScrapBuggy', '[183,[15442.3,9734.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000220', 'rth_ScrapApc', '[183,[14533.3,10395.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000221', 'VolhaLimo_TK_CIV_EP1', '[180,[14860.6,9331.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000222', 'UAZ_RU', '[274,[14646.1,9984.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000223', 'VWGolf', '[269,[15480.1,9470.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000224', 'datsun1_civil_3_open', '[4,[15226.7,9457.74,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000225', 'hilux1_civil_3_open_EP1', '[92,[14968.4,10162.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000226', 'MMT_Civ', '[268,[15840.2,9385.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000227', 'MMT_Civ', '[94,[15234.6,10249.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000228', 'Old_bike_TK_CIV_EP1', '[3,[14736.3,9524.02,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000229', 'SUV_Special', '[0,[15161.2,10052.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000230', 'TT650_TK_CIV_EP1', '[0,[14719.8,10259,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000231', 'SkodaGreen', '[91,[14611.5,10154.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000232', 'SkodaRed', '[111,[15348.2,9014.43,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000233', 'car_sedan', '[269,[14730.8,9807.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000234', 'hilux1_civil_1_open', '[3,[15476.7,9622.34,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000235', 'SUV_Special', '[4,[15169.5,9692,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000236', 'SUV_Special', '[358,[15086.7,9690.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000237', 'rth_ScrapApc', '[207,[15179.4,9174.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000238', 'rth_ScrapApc', '[184,[15334.8,10203.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000239', 'Volha_2_TK_CIV_EP1', '[95,[15589.6,9575.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000240', 'hilux1_civil_3_open_EP1', '[90,[15624.2,9573.14,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000242', 'Lada2_TK_CIV_EP1', '[92,[14937.8,9863.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000243', 'MMT_Civ', '[184,[15415.4,9269.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000245', 'rth_ScrapBuggy', '[43,[12719.9,15140.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000246', 'VolhaLimo_TK_CIV_EP1', '[233,[12494.5,15017.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000247', 'MMT_Civ', '[224,[12617.1,15157.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000248', 'Old_bike_TK_CIV_EP1', '[184,[13583,13523.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000249', 'rth_ScrapBuggy', '[272,[13591.4,13550.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000250', 'SUV_Special', '[84,[13715.5,13634.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000252', 'rth_ScrapBuggy', '[272,[11225.3,15895.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000253', 'Skoda', '[272,[11225.3,15905.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000254', 'car_sedan', '[269,[11225.3,15922,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000255', 'VolhaLimo_TK_CIV_EP1', '[269,[11225,15951.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000256', 'Old_bike_TK_CIV_EP1', '[101,[11515.3,15963.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000257', 'Ikarus', '[180,[11634.9,15762.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000258', 'VWGolf', '[155,[11894.7,15692.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000259', 'rth_ScrapApc', '[326,[11922.9,15458,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000260', 'TT650_Ins', '[22,[11965.7,15478.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000261', 'UAZ_Unarmed_TK_EP1', '[126,[11720.4,14881.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000262', 'rth_ScrapApc', '[125,[11704.6,14860.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000263', 'Old_bike_TK_CIV_EP1', '[182,[11338.4,15214.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000264', 'ATV_US_EP1', '[301,[12340.2,15732.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000265', 'rth_ScrapBuggy', '[157,[12459.7,13732.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000266', 'LandRover_CZ_EP1', '[8,[12521.9,13577.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000267', 'rth_ScrapApc', '[80,[12627.7,13612.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000268', 'Old_bike_TK_CIV_EP1', '[271,[12445.2,13531.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000269', 'datsun1_civil_3_open', '[152,[12645.3,11818.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000270', 'Ikarus_TK_CIV_EP1', '[360,[12628.4,11741,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000271', 'Old_bike_TK_CIV_EP1', '[74,[12825.9,11892.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000272', 'hilux1_civil_2_covered', '[306,[16137.5,13478.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000273', 'Ikarus', '[360,[16282.4,13657.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000274', 'TT650_TK_CIV_EP1', '[8,[15724.4,13410.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000275', 'rth_ScrapApc', '[170,[14844.5,18574.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000276', 'rth_ScrapBuggy', '[4,[15065.4,18458.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000278', 'LandRover_TK_CIV_EP1', '[296,[16716.2,10631.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000279', 'Old_bike_TK_CIV_EP1', '[359,[14462.5,11394.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000280', 'SUV_Special', '[33,[14265.1,11259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000281', 'VolhaLimo_TK_CIV_EP1', '[255,[14494.9,11287.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000282', 'hilux1_civil_3_open_EP1', '[64,[14114.1,12135.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000283', 'Old_bike_TK_CIV_EP1', '[343,[14165,11955.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000284', 'rth_scrapbus', '[338,[14131.7,12000.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000285', 'tractor', '[222,[14076,12119.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000286', 'Lada1_TK_CIV_EP1', '[241,[13994.2,12219.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000288', 'Old_bike_TK_CIV_EP1', '[177,[13943.9,12323.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000289', 'rth_ScrapApc', '[135,[13755.5,12224.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000290', 'hilux1_civil_2_covered', '[1,[9650,6007,0]]', 'Barn north of Repkov');
INSERT INTO `object_spawns` VALUES ('0000000000291', 'Old_bike_TK_CIV_EP1', '[113,[3278.82,7485.31,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000292', 'MMT_Civ', '[339,[3281.25,7548.81,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000293', 'TT650_TK_CIV_EP1', '[58,[3301.71,7599.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000294', 'TT650_Gue', '[216,[3340.57,7630.28,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000295', 'Old_bike_TK_CIV_EP1', '[178,[3424.7,7552.19,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000296', 'MMT_Civ', '[4,[3804.54,7187.21,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000297', 'TT650_TK_CIV_EP1', '[138,[3799.18,7098.58,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000298', 'TT650_Gue', '[180,[3710.04,7017.32,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000299', 'Old_bike_TK_CIV_EP1', '[230,[3821.48,6877.06,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000300', 'MMT_Civ', '[335,[3934.06,6942.25,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000301', 'Old_bike_TK_CIV_EP1', '[20,[3905.72,7077.5,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000302', 'MMT_Civ', '[96,[3963.42,7156.45,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000303', 'Old_bike_TK_CIV_EP1', '[21,[3985.11,7341.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000304', 'Mi17_DZ', '[136,[7754.04,4266.49,0]]', 'Branibor Tv-tower');
INSERT INTO `object_spawns` VALUES ('0000000000305', 'UH1H_DZ', '[180,[9349.95,4662.88,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000306', 'AH6X_DZ', '[117,[11574.3,648.71,0]]', 'Shore at Blato');
INSERT INTO `object_spawns` VALUES ('0000000000307', 'rth_copter_green', '[38,[9320.15,7765.53,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000308', 'UH1H_DZ', '[252,[5317.76,8620.61,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000309', 'AH6X_DZ', '[325,[5987.66,9657.02,0]]', 'Chernovar next to the broken barn');
INSERT INTO `object_spawns` VALUES ('0000000000310', 'Mi17_DZ', '[1,[15379.4,9707.99,0]]', 'Sabina Hospital');
INSERT INTO `object_spawns` VALUES ('0000000000311', 'UH1H_DZ', '[89,[11521.1,15306,0]]', 'Lypestok football stadium');
INSERT INTO `object_spawns` VALUES ('0000000000312', 'AH6X_DZ', '[269,[14520.7,11411.9,0]]', 'Novi Bor Construction Site');
INSERT INTO `object_spawns` VALUES ('0000000000313', 'rth_copter_green', '[88,[16754.3,6317.61,0]]', 'Stare Pol military base');
INSERT INTO `object_spawns` VALUES ('0000000000314', 'UH1H_DZ', '[3,[16966.1,12568.3,0]]', 'Molotovsk hotel');
INSERT INTO `object_spawns` VALUES ('0000000000315', 'AH6X_DZ', '[338,[8109.2,21168,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000316', 'Mi17_DZ', '[90,[15439.5,16282.2,0]]', 'Sevastopol firestation');
INSERT INTO `object_spawns` VALUES ('0000000000317', 'UH1H_DZ', '[341,[12560.9,13713.4,0]]', 'Doriyanov military base');
INSERT INTO `object_spawns` VALUES ('0000000000318', 'AH6X_DZ', '[94,[17465.6,7161.06,0]]', 'Byelov inner yard');
INSERT INTO `object_spawns` VALUES ('0000000000319', 'Pickup_PK_DZ', '[229,[11035.2,6675.03,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000320', 'UAZ_MG_DZ', '[32,[9336.4,5230.6,0]]', 'military base east of Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000321', 'Pickup_PK_DZ', '[217,[7749.32,7894.98,0]]', 'Krasnoznamensk Airfield');
INSERT INTO `object_spawns` VALUES ('0000000000322', 'UAZ_MG_DZ', '[5,[5837.59,9956.13,0]]', 'Chernova Police Station');
INSERT INTO `object_spawns` VALUES ('0000000000323', 'origins_bathmobile', '[9,[13368,8591.33,0]]', 'Chertova Styena');
INSERT INTO `object_spawns` VALUES ('0000000000324', 'UAZ_MG_DZ', '[163,[17207.3,5650.31,0]]', 'military base south of Stare Pole');
INSERT INTO `object_spawns` VALUES ('0000000000325', 'Pickup_PK_DZ', '[89,[16428.8,14267.4,0]]', 'Martin military base ( barracks)');
INSERT INTO `object_spawns` VALUES ('0000000000326', 'UAZ_MG_DZ', '[68,[12604.4,14406.3,0]]', 'Chrveni Gradok firestation');
INSERT INTO `object_spawns` VALUES ('0000000000327', 'origins_bathmobile', '[59,[11098.3,18706.2,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000328', 'UAZ_MG_DZ', '[238,[14011.1,12408.4,0]]', 'Solibor military base');
INSERT INTO `object_spawns` VALUES ('0000500000329', 'PBX_DZ', '[210,[5305.11,9213.32,0]]', 'Shore near Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000500000330', 'Fishing_Boat_DZ', '[39,[4893.85,8662.77,0]]', 'Shore of Primorsk');
INSERT INTO `object_spawns` VALUES ('0000500000331', 'rth_amphicar', '[72,[5725.44,10986,0]]', 'Borovska Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000332', 'rth_raft_small', '[131,[7179.07,10223,0]]', 'Shore near Vucor');
INSERT INTO `object_spawns` VALUES ('0000500000333', 'Fishing_Boat_DZ', '[131,[9016.48,8918.07,0]]', 'Shore near Nekmir');
INSERT INTO `object_spawns` VALUES ('0000500000334', 'Zodiac_DZ', '[345,[11426,6967.47,0]]', 'Krkav Shore');
INSERT INTO `object_spawns` VALUES ('0000500000335', 'Fishing_Boat_DZ', '[148,[10850.9,6061.89,0]]', 'Komarovo Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000336', 'rth_raft_small', '[327,[11902.8,1556.55,0]]', 'Vodice');
INSERT INTO `object_spawns` VALUES ('0000500000337', 'Zodiac_DZ', '[90,[10120.1,5358.97,0]]', 'Bashka Luka shore');
INSERT INTO `object_spawns` VALUES ('0000500000338', 'Fishing_Boat_DZ', '[334,[16789.4,4734.12,0]]', 'Chertovo Oko Southwest shore');
INSERT INTO `object_spawns` VALUES ('0000500000339', 'rth_raft', '[188,[10521.4,16779.3,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000340', 'rth_raft_small', '[169,[10360.8,16778.9,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000341', 'Fishing_Boat_DZ', '[163,[9750.54,14107.1,0]]', 'Cherveny Les Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000342', 'PBX_DZ', '[219,[7449.91,22134,0]]', 'Helfenburg northern Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000343', 'rth_raft_small', '[332,[15919.9,6182.26,0]]', 'Stare pole Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000000000346', 'ATV_CZ_EP1', '[182,[5987.73,9882.42,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000347', 'car_sedan', '[271,[6681.98,9811.98,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000348', 'MMT_Civ', '[186,[6735.83,9889.73,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000349', 'datsun1_civil_3_open', '[130,[9057.69,8128.55,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000350', 'Lada2_TK_CIV_EP1', '[220,[9535.59,7952.92,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000351', 'TT650_Civ', '[228,[9080.3,7858.84,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000352', 'ATV_CZ_EP1', '[128,[8958.34,8343.56,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000353', 'rth_ScrapBuggy', '[326,[8066.62,6557.08,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000354', 'MMT_Civ', '[60,[8483.98,5597.04,0]]', 'Polyanka');
INSERT INTO `object_spawns` VALUES ('0000000000355', 'Old_bike_TK_CIV_EP1', '[151,[9148.38,5465.5,0]]', 'Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000356', 'ATV_CZ_EP1', '[334,[11019.4,6679.71,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000357', 'datsun1_civil_2_covered', '[86,[10524.2,6581.97,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000358', 'ATV_CZ_EP1', '[263,[10655.4,6465.89,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000359', 'Old_bike_TK_CIV_EP1', '[48,[10862.9,6126.65,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000360', 'car_hatchback', '[228,[10017.9,1323.86,0]]', 'Marina');
INSERT INTO `object_spawns` VALUES ('0000000000361', 'rth_ScrapBuggy', '[136,[9638.87,1751.53,0]]', 'Kosovo');
INSERT INTO `object_spawns` VALUES ('0000000000362', 'Ikarus_TK_CIV_EP1', '[221,[7582.17,4367.27,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000363', 'TT650_Civ', '[226,[7913.65,4156.75,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000364', 'Old_moto_TK_Civ_EP1', '[305,[7935.54,5362.72,0]]', 'Bled');
INSERT INTO `object_spawns` VALUES ('0000000000366', 'ATV_CZ_EP1', '[326,[10919.7,18760.9,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000367', 'Skoda', '[282,[11295.9,17805.4,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000368', 'rth_ScrapBuggy', '[28,[15335.2,16080.1,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000369', 'Old_moto_TK_Civ_EP1', '[359,[15455.9,16387.5,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000370', 'SUV_Special', '[195,[12441.5,13807.4,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000371', 'Old_bike_TK_CIV_EP1', '[274,[12480.9,13607.9,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000372', 'VWGolf', '[0,[11690.2,15167.7,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000373', 'Lada1_TK_CIV_EP1', '[228,[11063.1,15440.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000374', 'hilux1_civil_3_open_EP1', '[186,[11485.4,15949.6,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000375', 'SUV_Special', '[232,[12223.3,15500.4,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000376', 'TT650_Civ', '[315,[11776.9,15325.2,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000377', 'ATV_CZ_EP1', '[231,[12347.5,15379.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000343', 'ATV_CZ_EP1', '[132,[3334.44,7605.02,0]]', 'Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000344', 'MMT_Civ', '[353,[5335.44,8844.42,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000345', 'datsun1_civil_3_open', '[270,[5737.02,9900.18,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000379', 'ATV_CZ_EP1', '[92,[13551,13550.6,0]]', 'Vinograd');
INSERT INTO `object_spawns` VALUES ('0000000000380', 'Old_bike_TK_CIV_EP1', '[275,[16325.9,13604.8,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000381', 'MMT_Civ', '[271,[16326.1,13608.2,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000382', 'SUV_Special', '[184,[16247.6,11578.6,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000383', 'hilux1_civil_3_open_EP1', '[90,[16163,11495.5,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000384', 'ATV_CZ_EP1', '[270,[16195.2,11601.9,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000386', 'rth_ScrapApc', '[120,[15197.7,7772.87,0]]', 'Boye');
INSERT INTO `object_spawns` VALUES ('0000000000387', 'ATV_CZ_EP1', '[2,[16310.1,7380.83,0]]', 'Krushevich');
INSERT INTO `object_spawns` VALUES ('0000000000388', 'rth_ScrapApc', '[78,[16464.1,9770.87,0]]', '');
INSERT INTO `object_spawns` VALUES ('0000500000389', 'UH1H_DZ', '[182,[22689,19845,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000390', 'Mi17_DZ', '[232,[22707.3,19614.5,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000391', 'Mi17_DZ', '[2,[22689.2,19196,0]]', 'Sektor B Start AirF');
INSERT INTO `object_spawns` VALUES ('0000500000392', 'UH1H_DZ', '[219,[22552.3,19667.4,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000393', 'rth_ScrapApc', '[95,[22558.3,19687.5,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000394', 'rth_ScrapApc', '[309,[22741,19305.5,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000395', 'rth_ScrapApc', '[221,[22750.3,19468.2,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000396', 'rth_raft', '[7,[21902.6,19331.9,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000397', 'rth_raft_small', '[38,[21774.4,19523.4,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000398', 'rth_raft', '[29,[21770.2,19821.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000399', 'rth_amphicar', '[78,[21979.7,20095.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000400', 'rth_raft', '[42,[22818.6,20391.5,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000401', 'rth_raft_small', '[233,[23116.7,20111,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000402', 'rth_raft', '[35,[23262.6,19802.5,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000403', 'rth_amphicar', '[121,[23300.9,19463.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000404', 'rth_raft', '[9,[23283.1,19244.2,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000405', 'rth_raft_small', '[0,[22964.3,18910.3,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000406', 'rth_amphicar', '[0,[22516.5,18786.4,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000407', 'rth_raft', '[134,[10265.7,16715.5,0]]', 'Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000408', 'rth_raft_small', '[0,[10656.3,16642.5,0]]', 'Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000409', 'rth_raft', '[0,[9465.59,14576.5,0]]', 'Proliv Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000410', 'rth_raft_small', '[192,[9886.85,14238.4,0]]', 'Proliv Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000411', 'rth_raft', '[0,[7833.28,19173.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000412', 'rth_raft_small', '[0,[7549.65,20378.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000413', 'rth_raft', '[80,[7302.73,21060.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000414', 'rth_raft_small', '[0,[17136.3,14103.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000415', 'rth_raft', '[243,[16220.8,16089.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000416', 'rth_raft_small', '[357,[15392.6,18204.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000417', 'rth_raft', '[0,[2451.93,8157.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000418', 'rth_copter_yellow', '[0,[4632.15,6349.35,0]]', '');
INSERT INTO `object_spawns` VALUES ('0000500000419', 'rth_copter_yellow', '[0,[4349.91,8068.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000420', 'rth_copter_yellow', '[210,[5471.15,8590.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000421', 'rth_copter_yellow', '[94,[8352.01,20842.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000422', 'rth_copter_yellow', '[0,[9946.07,18675.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000423', 'rth_copter_yellow', '[339,[10449.6,17614.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000424', 'rth_copter_green', '[234,[13036.3,14384,0]]', 'g');
INSERT INTO `object_spawns` VALUES ('0000500000425', 'rth_copter_green', '[358,[15142.1,15854.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000426', 'rth_copter_green', '[312,[16438.4,10382.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000427', 'rth_ScrapBuggy', '[66,[17097.7,7822.61,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000428', 'rth_ScrapBuggy', '[126,[17475.1,6208.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000429', 'rth_ScrapBuggy', '[85,[16808.1,12630,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000430', 'rth_ScrapBuggy', '[57,[15213.1,17015.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000431', 'DC3', '[20,[22852.6,19182.4,0]]', 'Sector B');
INSERT INTO `object_spawns` VALUES ('0000500000432', 'ori_vil_truck_civ2', '[233,[5102.6,6293.02,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000433', 'ori_vil_lublin_truck', '[148,[4715.7,8207.52,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000434', 'ori_vil_truck_civ1', '[267,[3426.43,7807.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000435', 'ori_vil_volvo_fl290', '[172,[7452.45,4101.49,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000436', 'ori_vil_truck_civ', '[252,[7834.52,4532.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000437', 'p85_cucv_pickup', '[236,[8150.87,4992.57,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000438', 'ori_p85_cucv', '[145,[8238.77,5015.45,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000439', 'p85_cucv_pickup', '[232,[8157.2,5024.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000440', 'ori_p85_cucv', '[169,[11435.5,671.487,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000441', 'ori_vil_truck_civ1', '[231,[11840.4,1420.83,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000442', 'ori_vil_volvo_fl290', '[313,[10940.7,2128.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000443', 'ori_p85_cucv', '[134,[9547.76,5737.86,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000444', 'ori_vil_truck_civ', '[49,[8806.59,8242.25,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000445', 'ori_vil_lublin_truck', '[144,[12459.6,11796.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000446', 'ori_vil_truck_civ1', '[142,[12605.4,12006.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000447', 'ori_p85_cucv', '[72,[12791.6,11999.2,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000448', 'p85_cucv_pickup', '[4,[12786.1,11704.3,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000449', 'ori_vil_lublin_truck', '[289,[17224.3,6902.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000450', 'ori_vil_truck_civ2', '[0,[17424.9,7501.15,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000451', 'ori_vil_volvo_fl290', '[93,[17407.3,7677.6,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000452', 'ori_vil_truck_civ', '[94,[16302.2,8816.24,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000453', 'ori_vil_truck_civ1', '[73,[15118.6,14785.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000454', 'p85_cucv_pickup', '[83,[15087.1,14873.6,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000455', 'ori_vil_volvo_fl290', '[289,[15137,14910.4,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000456', 'ori_vil_truck_civ2', '[90,[15359.8,16423.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000457', 'ori_vil_lublin_truck', '[24,[15569.1,16019.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000458', 'ori_vil_truck_civ', '[262,[11876.8,18618.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000459', 'p85_cucv_pickup', '[268,[9009.84,19351.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000460', 'ori_vil_truck_civ2', '[156,[10109.1,18055.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000461', 'ori_vil_volvo_fl290', '[319,[10622.9,17315.7,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000462', 'ori_vil_volvo_fl290', '[102,[10145.1,18735.2,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000463', 'rth_amphicar', '[0,[11519.7,329.167,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000464', 'rth_amphicar', '[345,[10089.3,3713.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000465', 'rth_amphicar', '[0,[5207,5616.89,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000466', 'rth_amphicar', '[358,[8715.87,9137.31,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000467', 'rth_amphicar', '[46,[10235.4,7841.43,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000468', 'rth_amphicar', '[110,[15899.5,10823.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000469', 'rth_amphicar', '[160,[17420.1,13182,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000470', 'rth_amphicar', '[96,[15174.1,17240.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000471', 'rth_amphicar', '[277,[11496.3,18552.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000472', 'rth_amphicar', '[14,[10834.3,14053,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000473', 'rth_amphicar', '[238,[9198.25,21524.6,0]]', null);

-- ----------------------------
-- Table structure for `player_data`
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `PlayerName` varchar(128) NOT NULL DEFAULT '',
  `PlayerMorality` int(11) DEFAULT NULL,
  `PlayerSex` tinyint(3) DEFAULT NULL,
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_data
-- ----------------------------

-- ----------------------------
-- Table structure for `player_login`
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) DEFAULT '',
  `CharacterID` int(11) DEFAULT NULL,
  `Action` tinyint(3) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5910 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_login
-- ----------------------------

-- ----------------------------
-- Procedure structure for `BugFix`
-- ----------------------------
DROP PROCEDURE IF EXISTS `BugFix`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BugFix`()
BEGIN

	UPDATE `character_data` SET `Alive` = '0' WHERE `Inventory` = '[[],[]]' AND `Backpack` LIKE '%["",[[],[]],[[],[]]]%' AND `Alive` = '1';

	

  UPDATE `object_data` SET `Damage`='1' WHERE `Worldspace` NOT LIKE '[%,[%,%,%]]';

	UPDATE `object_data` SET `Damage`='1' WHERE `Hitpoints` NOT LIKE '%[["%' AND `Hitpoints` NOT LIKE '%[]%';

 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Delete all in character_data (character vipe)`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete all in character_data (character vipe)`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete all in character_data (character vipe)`()
DELETE FROM character_data
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Delete all in object data (object vipe)`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete all in object data (object vipe)`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete all in object data (object vipe)`()
DELETE FROM object_data
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Delete all in player_data (player_data vipe)`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete all in player_data (player_data vipe)`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete all in player_data (player_data vipe)`()
delete from player_data
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Delete all in player_login (player_login vipe)`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete all in player_login (player_login vipe)`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete all in player_login (player_login vipe)`()
delete from player_login
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `Delete dead players`
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete dead players`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete dead players`()
DELETE FROM character_data where Alive='0'
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCleanup`()
BEGIN

	DELETE
	FROM object_data
	WHERE Damage = '1';

	DELETE
			FROM `object_data` 
			WHERE `ObjectUID` 
			NOT LIKE '0000%' 
			AND (	`Classname` NOT LIKE 'Tentstorage' AND 
					`Classname` NOT LIKE 'TentstorageR' AND 
					`Classname` NOT LIKE 'wooden_shed_lvl_1' AND 
					`Classname` NOT LIKE 'log_house_lvl_2' AND 
					`Classname` NOT LIKE 'wooden_house_lvl_3' AND 
					`Classname` NOT LIKE 'large_shed_lvl_1' AND 
					`Classname` NOT LIKE 'small_house_lvl_2' AND 
					`Classname` NOT LIKE 'big_house_lvl_3' AND 
					`Classname` NOT LIKE 'small_garage' AND 
					`Classname` NOT LIKE 'big_garage' AND 
					`Classname` NOT LIKE 'object_x');

	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000394';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000395';

	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001394';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001395';

	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001394', '1', 'UralCivil2', '0.05000', '0', '[269,[22180.7,19833.1,0]]', '[[[\"ItemPickaxe\"],[2]],[[\"ItemBpt_b1\",\"ItemBpt_b2\",\"ItemBpt_h1\",\"ItemBpt_h2\",\"ItemBpt_g_s\",\"ItemBpt_g_b\",\"ItemBattery\",\"ItemPin\",\"ItemRocks\",\"ItemCementBag\",\"PartScrap\",\"PartWoodPile\",\"ItemCeMix\",\"ItemAntibiotic\",\"ItemBandage\",\"ItemBloodbag\",\"ItemEpinephrine\",\"ItemMorphine\",\"ItemPainkiller\",\"FoodCanBakedBeans\",\"FoodCanFrankBeans\",\"FoodCanPasta\",\"FoodCanSardines\",\"ItemSodaCoke\",\"ItemSodaPepsi\",\"ItemHeatPack\"],[3,3,3,3,3,1,7,7,15,5,10,15,3,4,15,4,15,4,15,15,15,15,15,15,15,15]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001395', '1', 'UralCivil2', '0.05000', '0', '[178,[22507.883,20036.154,0]]', '[[[\"AKS_74_kobra\",\"M16A2GL\",\"AKS_74_U\",\"FN_FAL\",\"M9SD\",\"PK_DZ\",\"Pecheneg_DZ\",\"bizon_silenced\",\"M4A3_RCO_GL_EP1\",\"NVGoggles\",\"ItemGPS\",\"G36K\"],[3,3,3,3,3,3,3,3,3,2,2,1]],[[\"ItemBloodbag\",\"100Rnd_762x54_PK\",\"30Rnd_556x45_Stanag\",\"100Rnd_762x51_M240\",\"30Rnd_556x45_G36SD\",\"10Rnd_9x39_SP5_VSS\",\"ItemAntibiotic\",\"30Rnd_545x39_AK\",\"20Rnd_762x51_FNFAL\",\"15Rnd_9x19_M9SD\",\"64Rnd_9x19_SD_Bizon\",\"1Rnd_HE_GP25\",\"PartGeneric\",\"PartEngine\",\"PartGlass\",\"PartVRotor\",\"ItemJerrycan\",\"ItemTent\"],[10,10,10,10,10,10,10,10,10,10,10,10,4,2,6,2,10,2]],[["O_TravelerPack_1"],[1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	
DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000431';
	
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500000431', '1', 'DC3', '0.05000', '0', '[1,[22687.3,19239.3,0]]', '[]', '[]', '1', NOW());

	
	DELETE
	FROM object_data
	WHERE DATE(Datestamp) < CURDATE() - INTERVAL 5 DAY
	AND Classname != 'Hedgehog_DZ'
	AND Classname != 'Wire_cat1'
	AND Classname != 'Sandbag1_DZ'
	AND Classname != 'TrapBear'
	AND Classname != 'TentStorage'
	AND Classname != 'TentStorageR' AND
	Classname != 'wooden_shed_lvl_1' AND 
	Classname != 'log_house_lvl_2' AND 
	Classname != 'wooden_house_lvl_3' AND 
	Classname != 'large_shed_lvl_1' AND 
	Classname != 'small_house_lvl_2' AND 
	Classname != 'big_house_lvl_3' AND 
	Classname != 'small_garage' AND 
	Classname != 'big_garage' AND 
	Classname != 'object_x';

	
	DELETE
		FROM `object_data`
		WHERE `Classname` = 'TentStorage'
			AND  DATE(Datestamp) < CURDATE() - INTERVAL 6 DAY;

	
	DELETE
	FROM object_data
	WHERE Classname = 'TentStorage'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[[[],[]],[[],[]],[[],[]]]';

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorage'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[]';	

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorageR'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[[[],[]],[[],[]],[[],[]]]';

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorageR'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[]';

	
	DELETE
	FROM object_data
	WHERE Classname = 'Wire_cat1'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'Hedgehog_DZ'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'Sandbag1_DZ'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'TrapBear'
	AND DATE(Datestamp) <= CURDATE();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanupOOB`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCleanupOOB`()
BEGIN



	DECLARE intLineCount	INT DEFAULT 0;

	DECLARE intDummyCount	INT DEFAULT 0;

	DECLARE intDoLine			INT DEFAULT 0;

	DECLARE intWest				INT DEFAULT 0;

	DECLARE intNorth			INT DEFAULT 0;



	SELECT COUNT(*)

		INTO intLineCount

		FROM object_data;



	SELECT COUNT(*)

		INTO intDummyCount

		FROM object_data

		WHERE Classname = 'dummy';



	WHILE (intLineCount > intDummyCount) DO

	

		SET intDoLine = intLineCount - 1;



		SELECT ObjectUID, Worldspace

			INTO @rsObjectUID, @rsWorldspace

			FROM object_data

			LIMIT intDoLine, 1;



		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;

		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;

		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;

		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;



		SELECT INSTR(@West, '-') INTO intWest;

		SELECT INSTR(@North, '-') INTO intNorth;



		IF (intNorth = 0) THEN

			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;

		END IF;

			

		SET intLineCount = intLineCount - 1;



	END WHILE;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pFixMaxNum`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pFixMaxNum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pFixMaxNum`()
BEGIN

	DECLARE iCounter INT DEFAULT 0;

	SELECT COUNT(`Classname`) INTO @iClassesCount FROM `object_classes` WHERE Classname<>'';
	WHILE (iCounter < @iClassesCount) DO
		SELECT `Classname`, `MaxNum` INTO @Classname, @MaxNum FROM `object_classes` LIMIT iCounter,1;
		SELECT COUNT(`Classname`) INTO @iMaxClassSpawn FROM object_spawns WHERE `Classname` LIKE @Classname;
		IF (@MaxNum > @iMaxClassSpawn) THEN
			UPDATE `object_classes` SET MaxNum = @iMaxClassSpawn WHERE Classname = @Classname;
		END IF;
		SET iCounter = iCounter + 1;
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMain`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMain`()
    MODIFIES SQL DATA
BEGIN

DECLARE sInstance VARCHAR(8) DEFAULT '1';

DECLARE iVehSpawnMax INT DEFAULT 377;

DECLARE iTimeoutMax INT DEFAULT 450; 
DECLARE iTimeout INT DEFAULT 0; 
DECLARE iNumVehExisting INT DEFAULT 0; 
DECLARE iNumClassExisting INT DEFAULT 0; 
DECLARE i INT DEFAULT 1; 


CALL pCleanup();

SELECT COUNT(*) 
	INTO iNumVehExisting
FROM object_data
	WHERE Instance = sInstance
		AND Classname != 'Hedgehog_DZ' 
		AND Classname != 'Wire_cat1' 
		AND Classname != 'Sandbag1_DZ' 
		AND Classname != 'TrapBear' 
		AND Classname != 'TentStorage' 
		AND Classname != 'TentStorageR' AND 
		Classname != 'wooden_shed_lvl_1' AND 
		Classname != 'log_house_lvl_2' AND 
		Classname != 'wooden_house_lvl_3' AND 
		Classname != 'large_shed_lvl_1' AND 
		Classname != 'small_house_lvl_2' AND 
		Classname != 'big_house_lvl_3' AND 
		Classname != 'small_garage' AND 
		Classname != 'big_garage' AND 
		Classname != 'object_x';

WHILE (iNumVehExisting < iVehSpawnMax) DO 

	
	SELECT Classname, Chance, MaxNum, Damage
	INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
	FROM object_classes ORDER BY RAND() LIMIT 1;

	
	SELECT COUNT(*)
	INTO iNumClassExisting
	FROM object_data
	WHERE Instance = sInstance
	AND Classname = @rsClassname;

	IF (iNumClassExisting < @rsMaxNum) THEN
		IF (rndspawn(@rschance) = 1) THEN
			INSERT INTO object_data (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
				SELECT OS.ObjectUID, '1', OC.Classname, RAND(@rsOC.Damage), NULL AS `CharacterID`, OS.Worldspace, '[]' AS `Inventory`, OC.Hitpoints, RAND(1), SYSDATE()
					FROM object_spawns OS
					INNER JOIN object_classes OC
					ON OS.Classname = OC.Classname
				WHERE OC.Classname = @rsClassname
				AND NOT OS.ObjectUID IN (SELECT ObjectUID FROM object_data WHERE instance = sInstance)
			ORDER BY RAND()
			LIMIT 0, 1;

			SELECT COUNT(*)
			INTO iNumVehExisting
			FROM object_data
			WHERE Instance = sInstance
			AND Classname != 'Hedgehog_DZ' 
			AND Classname != 'Wire_cat1' 
			AND Classname != 'Sandbag1_DZ' 
			AND Classname != 'TrapBear' 
			AND Classname != 'TentStorage' 
			AND Classname != 'TentStorageR' AND 
			Classname != 'wooden_shed_lvl_1' AND 
			Classname != 'log_house_lvl_2' AND 
			Classname != 'wooden_house_lvl_3' AND 
			Classname != 'large_shed_lvl_1' AND 
			Classname != 'small_house_lvl_2' AND 
			Classname != 'big_house_lvl_3' AND 
			Classname != 'small_garage' AND 
			Classname != 'big_garage' AND 
			Classname != 'object_x';	

			
			SELECT COUNT(*)
			INTO iNumClassExisting
			FROM object_data
			WHERE Instance = sInstance
			AND Classname = @rsClassname;

		END IF;
	END IF;	

	SET iTimeout = iTimeout + 1; 
	IF (iTimeout >= iTimeoutMax) THEN
		SET iNumVehExisting = iVehSpawnMax;
	END IF;
END WHILE;
SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMoveDead`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMoveDead`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMoveDead`()
BEGIN
	
	DECLARE iNumVehExisting INT DEFAULT 0; 
	DECLARE iPlayerUID INT DEFAULT 1; 
	
	SELECT count(DISTINCT `PlayerUID`) 
		INTO @rsMaxNum
		FROM `character_data` 
		WHERE `Alive` = '0';
	
	WHILE (iPlayerUID < @rsMaxNum) DO
	
		SELECT DISTINCT `PlayerUID`
			INTO @nPlayerUID
			FROM `character_data` 
			WHERE `Alive` = '0' 
			ORDER BY `PlayerUID` LIMIT iPlayerUID,1;

		SELECT count(`PlayerUID`) 
			INTO @numPlayerUID
			FROM `character_data` 
			WHERE `Alive` = '0' 
			AND `PlayerUID`=@nPlayerUID;
		
		IF (@numPlayerUID>1) THEN 
			SELECT `CharacterID`
				INTO @nCharacterID
				FROM `character_data` 
				WHERE `Alive` = '0' 
				AND `PlayerUID`=@nPlayerUID  
				ORDER BY `Datetime` DESC LIMIT 1,1;
	
			INSERT INTO `character_data_dead` (CharacterID,PlayerUID,Alive,InstanceID,Worldspace,Inventory,Backpack,Medical,Generation,Datestamp,LastLogin,LastAte,LastDrank,Humanity,KillsZ,HeadshotsZ,distanceFoot,duration,currentState,KillsH,KillsB,Model,Datetime) 
				SELECT CharacterID,PlayerUID,Alive,InstanceID,Worldspace,Inventory,Backpack,Medical,Generation,Datestamp,LastLogin,LastAte,LastDrank,Humanity,KillsZ,HeadshotsZ,distanceFoot,duration,currentState,KillsH,KillsB,Model,Datetime 
				FROM `character_data` WHERE `Alive` = '0' AND `PlayerUID`=@nPlayerUID AND `CharacterID` <> @nCharacterID;
			
			DELETE FROM `character_data` WHERE `Alive` = '0' AND `PlayerUID`=@nPlayerUID AND `CharacterID` <> @nCharacterID; 
		END IF;
	SET iPlayerUID = iPlayerUID + 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pSpawn`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pSpawn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pSpawn`()
BEGIN

    DECLARE bSpawned        TINYINT(1) DEFAULT 0;

    DECLARE iLID            INT DEFAULT 0;

    WHILE (bSpawned = 0) DO
        SET iLID = LAST_INSERT_ID();
        INSERT INTO `object_data` (ObjectUID, Instance,Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
        SELECT ot.ObjectUID, '1', ot.Classname, ot.Damage, '0', ot.Worldspace, '[]', ot.Hitpoints, '0.01', SYSDATE()
            FROM (SELECT oc.Classname, oc.Chance, oc.MaxNum, oc.Damage, oc.Hitpoints, os.ObjectUID, os.Worldspace
                FROM object_classes AS oc
                INNER JOIN `object_spawns` AS os
                ON oc.Classname = os.Classname
                ORDER BY RAND()) AS ot
            WHERE NOT EXISTS (SELECT od.ObjectUID
                            FROM `object_data` AS od
                            WHERE ot.ObjectUID = od.ObjectUID)
            AND fGetClassCount(ot.Classname) < ot.MaxNum
            AND fGetSpawnFromChance(ot.Chance) = 1
            LIMIT 1;
          

            IF (LAST_INSERT_ID() <> iLID) THEN
                SET bSpawned = 1;
            END IF;
    END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetClassCount`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetClassCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetClassCount`(`clname` varchar(32)) RETURNS smallint(3)
    READS SQL DATA
BEGIN
	DECLARE iClassCount SMALLINT(3) DEFAULT 0;
	
	SELECT COUNT(`Classname`) 
		INTO iClassCount 
		FROM `object_data` 
		WHERE `Classname` = clname;
	RETURN iClassCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetSpawnFromChance`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetSpawnFromChance`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetSpawnFromChance`(`chance` double) RETURNS tinyint(1)
    NO SQL
BEGIN
	DECLARE bspawn TINYINT(1) DEFAULT 0;
	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;
	RETURN bspawn;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetVehCount`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetVehCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetVehCount`() RETURNS int(3)
    READS SQL DATA
BEGIN
	DECLARE iVehCount	INT(3) DEFAULT 0;
	SELECT COUNT(`Classname`) 
		INTO iVehCount
		FROM `object_data` 
		WHERE `Classname` != 'dummy'
			AND `Classname` != 'TentStorage'  
			AND `Classname` != 'Hedgehog_DZ'	
			AND `Classname` != 'Wire_cat1'		
			AND `Classname` != 'Sandbag1_DZ'	
			AND `Classname` != 'TrapBear';		
	RETURN iVehCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `rndspawn`
-- ----------------------------
DROP FUNCTION IF EXISTS `rndspawn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
BEGIN

DECLARE bspawn tinyint(1) DEFAULT 0;

IF (RAND() <= chance) THEN
SET bspawn = 1;
END IF;

RETURN bspawn;

END
;;
DELIMITER ;
