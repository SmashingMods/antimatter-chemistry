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

Dissolver.addRecipe(<nuclearcraft:americium>, true, 1, [[100.0, alch("americium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:americium:4>, true, 1, [[100.0, alch("americium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:americium:8>, true, 1, [[100.0, alch("americium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:thorium>, true, 1, [[100.0, alch("thorium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:thorium:4>, true, 1, [[100.0, alch("thorium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:plutonium>, true, 1, [[100.0, alch("plutonium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:4>, true, 1, [[100.0, alch("plutonium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:8>, true, 1, [[100.0, alch("plutonium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:plutonium:12>, true, 1, [[100.0, alch("plutonium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:uranium>, true, 1, [[100.0, alch("uranium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:uranium:4>, true, 1, [[100.0, alch("uranium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:uranium:8>, true, 1, [[100.0, alch("uranium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:curium>, true, 1, [[100.0, alch("curium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:curium:4>, true, 1, [[100.0, alch("curium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:curium:8>, true, 1, [[100.0, alch("curium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:curium:12>, true, 1, [[100.0, alch("curium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:berkelium>, true, 1, [[100.0, alch("berkelium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:berkelium:4>, true, 1, [[100.0, alch("berkelium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:neptunium>, true, 1, [[100.0, alch("neptunium") * 14]]);
Dissolver.addRecipe(<nuclearcraft:neptunium:4>, true, 1, [[100.0, alch("neptunium") * 14]]);

Dissolver.addRecipe(<nuclearcraft:boron>, true, 1, [[100.0, alch("boron") * 10]]);
Dissolver.addRecipe(<nuclearcraft:boron:2>, true, 1, [[100.0, alch("boron") * 10]]);

Dissolver.addRecipe(<nuclearcraft:lithium>, true, 1, [[100.0, alch("lithium") * 10]]);
Dissolver.addRecipe(<nuclearcraft:lithium:2>, true, 1, [[100.0, alch("lithium") * 10]]);
