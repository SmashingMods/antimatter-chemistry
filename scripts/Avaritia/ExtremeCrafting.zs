import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import mods.avaritia.ExtremeCrafting;

import scripts.functions.s;

ExtremeCrafting.remove(<avaritia:resource:5>);
ExtremeCrafting.addShaped("antimatter_singularity",<avaritia:resource:5>, [
    [s(1),s(2),s(3),s(4),s(5),s(6),s(7),s(8),s(9)],
    [s(10),s(11),s(12),s(13),s(14),s(15),s(16),s(17),s(18)],
    [s(19),s(20),s(21),s(22),s(23),s(24),s(25),s(26),s(27)],
    [s(28),s(29),s(30),s(31),s(32),s(33),s(34),s(35),s(36)],
    [s(37),s(38),s(39),s(40),s(41),s(42),s(43),s(44),s(45)],
    [s(46),s(47),s(48),s(49),s(50),s(51),s(52),s(53),s(54)],
    [s(55),s(56),s(57),s(58),s(59),s(60),s(62),s(66),s(74)],
    [s(76),s(78),s(79),s(80),s(82),s(88),s(90),s(92),s(93)],
    [s(94),s(95),s(101),s(118),s(200),s(201),<avaritia:singularity:2>,<avaritia:singularity:3>,<avaritia:singularity:4>]
]);
