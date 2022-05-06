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

Combiner.addRecipe(<dimensionaledibles:end_cake>,[
    alch("lithium") * 64,<deepmoblearning:pristine_matter_blaze> * 4, alch("lithium") * 64,
    <deepmoblearning:pristine_matter_skeleton> * 8, <minecraft:cake>,<deepmoblearning:pristine_matter_creeper> * 8,
    alch("lithium") * 64, <deepmoblearning:pristine_matter_zombie> * 8, alch("lithium") * 64
]);
