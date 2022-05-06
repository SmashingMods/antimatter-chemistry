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
import mods.alchemistry.Dissolver;

import scripts.functions.alch;

// NuclearCraft Calcium Sulfate

var calciumSulfate as IItemStack = <nuclearcraft:compound:0>;

Combiner.addRecipe(calciumSulfate,[alch("calcium"),alch("sulfur"),alch("oxygen") * 4]);
Dissolver.addRecipe(calciumSulfate,false,1,[
    [100, alch("calcium")],
    [100, alch("sulfur")],
    [100, alch("oxygen") * 4]
]);

// Industrial Foregoing PVC

Combiner.addRecipe(<industrialforegoing:plastic>, [
    alch("polyvinyl chloride") * 32,null,null,
    null,null,null,
    null,null,null
]);

Dissolver.addRecipe(<industrialforegoing:plastic>,false,1,[[100.0,alch("polyvinyl chloride") * 6]]);
