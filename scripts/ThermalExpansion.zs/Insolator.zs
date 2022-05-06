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

import mods.thermalexpansion.Insolator;

Insolator.addRecipe(<atum:palm_log> * 6, <atum:palm_sapling>, <thermalfoundation:fertilizer>, 9600, <atum:palm_sapling>, 100);
Insolator.addRecipe(<atum:palm_log> * 12, <atum:palm_sapling>, <thermalfoundation:fertilizer:1>, 14400, <atum:palm_sapling>, 125);
Insolator.addRecipe(<atum:palm_log> * 18, <atum:palm_sapling>, <thermalfoundation:fertilizer:2>, 19200, <atum:palm_sapling>, 150);
