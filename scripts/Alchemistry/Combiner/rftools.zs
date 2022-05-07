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

// Dimensional Shards
Combiner.addRecipe(<rftools:dimensional_shard> * 20,[
    <rftools:dimensional_shard>, alch("ammonium dichromate") * 64, <rftools:dimensional_shard>,
    alch("ammonium dichromate") * 64, alch("gadolinium") * 64, alch("ammonium dichromate") * 64,
    <rftools:dimensional_shard>, alch("ammonium dichromate") * 64, <rftools:dimensional_shard>
]);
