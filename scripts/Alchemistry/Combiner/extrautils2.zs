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

import mods.alchemistry.Combiner;

import scripts.functions.alch;

var evilDrop as IItemStack = <extrautils2:ingredients:10>;

Combiner.addRecipe(evilDrop,[
    alch("carbon") * 64,alch("sulfur") * 64,alch("carbon") * 64,
    alch("sulfur") * 64,<minecraft:gunpowder> * 8,alch("sulfur") * 64,
    alch("carbon") * 64,alch("sulfur") * 64,alch("carbon") * 64
]);
