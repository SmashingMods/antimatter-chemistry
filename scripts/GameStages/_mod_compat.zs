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

import mods.recipestages.Recipes;

// This script enables modded crafting tables / machines to craft staged items

var allStages as string[] = [
    "energy",
    "tinkers",
    "mummy",
    "netherstar"
];

//AE Crafting Terminal
Recipes.setPackageStage("appeng", allStages);

//RS Crafting Grid
Recipes.setPackageStage("com.raoulvdberge.refinedstorage", allStages);

//RFtools Crafters
Recipes.setPackageStage("mcjty", allStages);

//Thermal Expansion
Recipes.setPackageStage("cofh", allStages);
