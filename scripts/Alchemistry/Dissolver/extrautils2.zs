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

import mods.alchemistry.Dissolver;

import scripts.functions.alch;

Dissolver.addRecipe(<extrautils2:compressedcobblestone>, true, 9, [
    [350.0, null], 
    [2.0, <alchemistry:element:13>], 
    [4.0, <alchemistry:element:26>], 
    [2.0, <alchemistry:element:79>], 
    [10.0, <alchemistry:compound:1>]
]);

Dissolver.addRecipe(<extrautils2:compressedcobblestone:1>, true, 81, [
    [350.0, null], 
    [3.0, <alchemistry:element:13>], 
    [6.0, <alchemistry:element:26>], 
    [3.0, <alchemistry:element:79>], 
    [13.0, <alchemistry:compound:1>]
]);

Dissolver.addRecipe(<extrautils2:compressedcobblestone:2>, true, 729, [
    [350.0, null], 
    [5.0, <alchemistry:element:13>], 
    [8.0, <alchemistry:element:26>], 
    [5.0, <alchemistry:element:79>], 
    [16.0, <alchemistry:compound:1>]
]);

Dissolver.addRecipe(<extrautils2:compressedcobblestone:3>, true, 6561, [
    [350.0, null], 
    [5.0, <alchemistry:element:13>], 
    [8.0, <alchemistry:element:26>], 
    [5.0, <alchemistry:element:79>], 
    [16.0, <alchemistry:compound:1>]
]);
